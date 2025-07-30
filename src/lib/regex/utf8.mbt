///| Convert a Unicode character to its UTF-8 byte representation
fn uchar_to_utf8_bytes(ch : Char) -> Bytes {
  @encoding.encode(UTF8, String::make(1, ch))
}

///| Find the common prefix of two byte arrays
fn common_prefix(s1 : Bytes, s2 : Bytes) -> Bytes {
  let len = if s1.length() < s2.length() { s1.length() } else { s2.length() }
  let mut i = 0
  while i < len && s1[i] == s2[i] {
    i = i + 1
  }
  s1[0:i].to_bytes()
}

///| Create a character set containing a range of characters
fn make_range_cset(min : Int, max : Int) -> @char_set.T {
  @char_set.range(min.unsafe_to_char(), max.unsafe_to_char())
}

///| Convert a Bytes array to a list of character sets (one per byte)
fn bytes_to_charsets(bytes : Bytes) -> Array[@char_set.T] {
  bytes
  .iter()
  .map(fn(byte) { @char_set.singleton(byte.to_int().unsafe_to_char()) })
  .to_array()
}

///| Create a singleton character set from a byte value
fn char_from_byte(byte : Byte) -> @char_set.T {
  @char_set.singleton(byte.to_int().unsafe_to_char())
}

///|
priv suberror Exit

///| Convert Unicode character class to UTF-8 byte sequences
pub fn lower_unicode_charclass_to_utf8(
  cset : @char_set.T,
) -> Array[Array[@char_set.T]] {
  // Group characters by their UTF-8 byte length
  let groups = [
    (1, cset & make_range_cset(0x0000, 0x007F)), // UTF-8 1 byte
    (2, cset & make_range_cset(0x0080, 0x07FF)), // UTF-8 2 bytes  
    (3, cset & make_range_cset(0x0800, 0xFFFF)), // UTF-8 3 bytes
    (4, cset & make_range_cset(0x10000, 0x10FFFF)), // UTF-8 4 bytes
  ]
  let branches : Array[Array[@char_set.T]] = []
  for group in groups {
    let (num_bytes, group_cset) = group
    if num_bytes == 1 {
      // For 1-byte characters, just add the character set directly
      if not(group_cset.is_empty()) {
        branches.push([group_cset])
      }
    } else {
      for range in group_cset.iter_ranges() {
        let (min_char, max_char) = range
        let min_bytes = uchar_to_utf8_bytes(min_char)
        let max_bytes = uchar_to_utf8_bytes(max_char)
        let prefix = common_prefix(min_bytes, max_bytes)
        let prefix_len = prefix.length()

        // Create prefix character sets
        let prefix_charsets = bytes_to_charsets(prefix)
        let remaining_len = num_bytes - prefix_len

        // Generate branches based on OCaml algorithm
        // Handle the min side transitions
        for i = remaining_len; i >= 1; i = i - 1 {
          try {
            let remaining : Array[@char_set.T] = []
            for j = 0; j < remaining_len; j = j + 1 {
              if j < i {
                remaining.push(char_from_byte(min_bytes[prefix_len + j]))
              } else if j > i {
                remaining.push(char_from_byte(min_bytes[prefix_len + j]))
              } else {
                let min_val = min_bytes[prefix_len + j].to_int() + 1
                if min_val > 0xBF {
                  raise Exit
                }
                remaining.push(
                  @char_set.range(min_val.unsafe_to_char(), '\u{bf}'),
                )
              }
            }
            let full_branch = [..prefix_charsets, ..remaining]
            branches.push(full_branch)
          } catch {
            Exit => ()
          }
        }

        // Handle the middle range
        try {
          let remaining : Array[@char_set.T] = []
          for i = 0; i < remaining_len; i = i + 1 {
            if i == 0 {
              let min_val = min_bytes[prefix_len + i].to_int() + 1
              let max_val = max_bytes[prefix_len + i].to_int() - 1
              if min_val > max_val {
                raise Exit
              }
              remaining.push(
                @char_set.range(
                  min_val.unsafe_to_char(),
                  max_val.unsafe_to_char(),
                ),
              )
            } else {
              remaining.push(@char_set.range('\u{80}', '\u{bf}'))
            }
          }
          let full_branch = [..prefix_charsets, ..remaining]
          branches.push(full_branch)
        } catch {
          Exit => ()
        }

        // Handle the max side transitions
        for i = remaining_len; i >= 1; i = i - 1 {
          try {
            let remaining : Array[@char_set.T] = []
            for j = 0; j < remaining_len; j = j + 1 {
              if j < i {
                remaining.push(char_from_byte(max_bytes[prefix_len + j]))
              } else if j > i {
                remaining.push(
                  @char_set.range(
                    '\u{80}',
                    max_bytes[prefix_len + j].to_int().unsafe_to_char(),
                  ),
                )
              } else {
                let max_val = max_bytes[prefix_len + j].to_int() - 1
                if max_val < 0x80 {
                  raise Exit
                }
                remaining.push(
                  @char_set.range('\u{80}', max_val.unsafe_to_char()),
                )
              }
            }
            let full_branch = [..prefix_charsets, ..remaining]
            branches.push(full_branch)
          } catch {
            Exit => ()
          }
        }
      }
    }
  }
  branches
}

///|
test "['\\u3000'], ['\\u30ff']" {
  @json.inspect(
    lower_unicode_charclass_to_utf8(@char_set.singleton('\u3000')),
    content=[[[[227, 227]], [[128, 128]], [[128, 128]]]],
  )
  @json.inspect(
    lower_unicode_charclass_to_utf8(@char_set.singleton('\u30ff')),
    content=[[[[227, 227]], [[131, 131]], [[191, 191]]]],
  )
}

///|
test "['\\u3000'-'\\u30ff']" {
  @json.inspect(
    lower_unicode_charclass_to_utf8(@char_set.range('\u3000', '\u30ff')),
    content=[
      [[[227, 227]], [[128, 128]], [[128, 128]]],
      [[[227, 227]], [[128, 128]], [[129, 191]]],
      [[[227, 227]], [[129, 130]], [[128, 191]]],
      [[[227, 227]], [[131, 131]], [[191, 191]]],
      [[[227, 227]], [[131, 131]], [[128, 190]]],
    ],
  )
}

///|
test "['\\x00'-'\\u{10ffff}']" {
  @json.inspect(
    lower_unicode_charclass_to_utf8(@char_set.range('\u{00}', '\u{10ffff}')),
    content=[
      [[[0, 127]]],
      [[[194, 194]], [[128, 128]]],
      [[[194, 194]], [[129, 191]]],
      [[[195, 222]], [[128, 191]]],
      [[[223, 223]], [[191, 191]]],
      [[[223, 223]], [[128, 190]]],
      [[[224, 224]], [[160, 160]], [[128, 128]]],
      [[[224, 224]], [[160, 160]], [[129, 191]]],
      [[[224, 224]], [[161, 191]], [[128, 128]]],
      [[[225, 238]], [[128, 191]], [[128, 191]]],
      [[[239, 239]], [[191, 191]], [[191, 191]]],
      [[[239, 239]], [[191, 191]], [[128, 190]]],
      [[[239, 239]], [[128, 190]], [[128, 191]]],
      [[[240, 240]], [[144, 144]], [[128, 128]], [[128, 128]]],
      [[[240, 240]], [[144, 144]], [[128, 128]], [[129, 191]]],
      [[[240, 240]], [[144, 144]], [[129, 191]], [[128, 128]]],
      [[[240, 240]], [[145, 191]], [[128, 128]], [[128, 128]]],
      [[[241, 243]], [[128, 191]], [[128, 191]], [[128, 191]]],
      [[[244, 244]], [[143, 143]], [[191, 191]], [[191, 191]]],
      [[[244, 244]], [[143, 143]], [[191, 191]], [[128, 190]]],
      [[[244, 244]], [[143, 143]], [[128, 190]], [[128, 191]]],
      [[[244, 244]], [[128, 142]], [[128, 191]], [[128, 191]]],
    ],
  )
}

///|
test "['\\xff' '\\uffff']" {
  @json.inspect(
    lower_unicode_charclass_to_utf8(
      @char_set.singleton('\u{ff}') + @char_set.singleton('\uffff'),
    ),
    content=[
      [[[195, 195]], [[191, 191]]],
      [[[239, 239]], [[191, 191]], [[191, 191]]],
    ],
  )
}

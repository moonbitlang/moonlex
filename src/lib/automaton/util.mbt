///|
fn utf8_bytes_to_char(bytes : Bytes) -> Char {
  let decoder = @encoding.decoder(UTF8)
  let str = decoder.decode_lossy(bytes)
  guard str is [c]
  c
}

///|
fn get_masked_range_cset(
  bytes : Bytes,
  num_bytes : Int,
  mask_index : Int,
) -> @char_set.T {
  guard mask_index >= 1 && mask_index <= bytes.length()
  let prefix = bytes[0:mask_index]
  let masked_min_suffix = Bytes::make(num_bytes - mask_index, 0x80)
  let masked_max_suffix = Bytes::make(num_bytes - mask_index, 0xbf)
  let masked_min_bytes : Bytes = [..prefix, ..masked_min_suffix]
  let masked_max_bytes : Bytes = [..prefix, ..masked_max_suffix]
  let masked_min = utf8_bytes_to_char(masked_min_bytes)
  let masked_max = utf8_bytes_to_char(masked_max_bytes)
  @char_set.range(masked_min, masked_max)
}

///|
fn lower_unicode_charclass_to_utf8(
  cset : @char_set.T,
) -> Array[Array[@char_set.T]] {
  // TODO: This function does not return optimal results.
  let groups = [
    (1, cset & @char_set.range('\u{00}', '\u{7f}')),
    (2, cset & @char_set.range('\u{80}', '\u{7ff}')),
    (3, cset & @char_set.range('\u{800}', '\u{ffff}')),
    (4, cset & @char_set.range('\u{10000}', '\u{10ffff}')),
  ]
  let result = []
  for group in groups {
    let (num_bytes, cset) = group
    if num_bytes == 1 {
      if not(cset.is_empty()) {
        result.push([cset])
      }
    } else {
      let branches = []
      let dedup = Set::new()
      fn add_branch(range_cset : @char_set.T, pin_index : Int) {
        if dedup.add_and_check((range_cset, pin_index)) {
          let ranges = range_cset.iter_ranges().to_array()
          guard ranges.length() <= 1
          guard ranges is [range] else { return }
          let (min, max) = range
          let min_bytes = @encoding.encode(UTF8, String::make(1, min))
          let max_bytes = @encoding.encode(UTF8, String::make(1, max))
          if pin_index >= num_bytes {
            guard min_bytes == max_bytes
            branches.push(
              [
                ..min_bytes
                .iter()
                .map(fn(byte) {
                  @char_set.singleton(byte.to_int().unsafe_to_char())
                }),
              ],
            )
          } else {
            let common_prefix = min_bytes[0:pin_index]
            let common_prefix2 = max_bytes[0:pin_index]
            guard common_prefix == common_prefix2
            branches.push(
              [
                ..common_prefix
                .iter()
                .map(fn(byte) {
                  @char_set.singleton(byte.to_int().unsafe_to_char())
                })
                .to_array(),
                @char_set.range(
                  min_bytes[pin_index].to_int().unsafe_to_char(),
                  max_bytes[pin_index].to_int().unsafe_to_char(),
                ),
                ..[@char_set.range('\u{80}', '\u{bf}')].repeat(
                  num_bytes - pin_index - 1,
                ),
              ],
            )
          }
        }
      }

      for range in cset.iter_ranges() {
        let (min, max) = range
        let range_cset = @char_set.range(min, max)
        let min_bytes = @encoding.encode(UTF8, String::make(1, min))
        let max_bytes = @encoding.encode(UTF8, String::make(1, max))
        fn process_endpoint(bytes : Bytes) {
          for i = num_bytes; i >= 1; i = i - 1 {
            let sub_range_cset = (
                get_masked_range_cset(bytes, num_bytes, i) & range_cset
              ) -
              (if i == num_bytes {
                @char_set.empty
              } else {
                get_masked_range_cset(bytes, num_bytes, i + 1)
              })
            add_branch(sub_range_cset, i)
          }
        }

        process_endpoint(min_bytes)
        let mid_range_csets = range_cset -
          get_masked_range_cset(min_bytes, num_bytes, 1) -
          get_masked_range_cset(max_bytes, num_bytes, 1)
        for mid_range in mid_range_csets.iter_ranges() {
          let (min, max) = mid_range
          let mid_range_cset = @char_set.range(min, max)
          add_branch(mid_range_cset, 0)
        }
        process_endpoint(max_bytes)
      }
      // TODO: lift common
      for branch in branches {
        result.push(branch)
      }
    }
  }
  result
}

///|
test "['\\u3000'], ['\\u30ff']" {
  // assert_eq!(
  //   lower_unicode_charclass_to_utf8(@char_set.singleton('\u3000')),
  //   [
  //     [
  //       @char_set.singleton('\u{e3}'),
  //       @char_set.singleton('\u{80}'),
  //       @char_set.singleton('\u{80}'),
  //     ],
  //   ],
  // )
  // assert_eq!(
  //   lower_unicode_charclass_to_utf8(@char_set.singleton('\u30ff')),
  //   [
  //     [
  //       @char_set.singleton('\u{e3}'),
  //       @char_set.singleton('\u{81}'),
  //       @char_set.singleton('\u{bf}'),
  //     ],
  //   ],
  // )
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
  // assert_eq!(
  //   lower_unicode_charclass_to_utf8(@char_set.range('\u3000', '\u30ff')),
  //   [
  //     [
  //       @char_set.singleton('\u{e3}'),
  //       @char_set.range('\u{80}', '\u{81}'),
  //       @char_set.range('\u{80}', '\u{bf}'),
  //     ],
  //   ],
  // )
  @json.inspect(
    lower_unicode_charclass_to_utf8(@char_set.range('\u3000', '\u30ff')),
    content=[
      [[[227, 227]], [[128, 128]], [[128, 128]]],
      [[[227, 227]], [[128, 128]], [[129, 191]]],
      [[[227, 227]], [[129, 131]], [[128, 191]]],
      [[[227, 227]], [[131, 131]], [[191, 191]]],
      [[[227, 227]], [[131, 131]], [[128, 190]]],
      [[[227, 227]], [[128, 130]], [[128, 191]]],
    ],
  )
}

///|
test "['\\x00'-'\\u{10ffff}']" {
  // assert_eq!(
  //   lower_unicode_charclass_to_utf8(@char_set.range('\u{00}', '\u{10ffff}')),
  //   [
  //     [@char_set.range('\u{00}', '\u{7f}')],
  //     [
  //       @char_set.range('\u{c0}', '\u{df}'),
  //       @char_set.range('\u{80}', '\u{bf}'),
  //     ],
  //     [
  //       @char_set.range('\u{e0}', '\u{ef}'),
  //       @char_set.range('\u{80}', '\u{bf}'),
  //       @char_set.range('\u{80}', '\u{bf}'),
  //     ],
  //     [
  //       @char_set.range('\u{f0}', '\u{f7}'),
  //       @char_set.range('\u{80}', '\u{bf}'),
  //       @char_set.range('\u{80}', '\u{bf}'),
  //       @char_set.range('\u{80}', '\u{bf}'),
  //     ],
  //   ],
  // )
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
      [[[224, 224]], [[128, 191]], [[128, 191]]],
      [[[225, 238]], [[128, 191]], [[128, 191]]],
      [[[239, 239]], [[191, 191]], [[191, 191]]],
      [[[239, 239]], [[191, 191]], [[128, 190]]],
      [[[239, 239]], [[128, 190]], [[128, 191]]],
      [[[240, 240]], [[144, 144]], [[128, 128]], [[128, 128]]],
      [[[240, 240]], [[144, 144]], [[128, 128]], [[129, 191]]],
      [[[240, 240]], [[144, 144]], [[129, 191]], [[128, 191]]],
      [[[240, 240]], [[145, 191]], [[128, 191]], [[128, 191]]],
      [[[241, 244]], [[128, 191]], [[128, 191]], [[128, 191]]],
      [[[244, 244]], [[143, 143]], [[191, 191]], [[191, 191]]],
      [[[244, 244]], [[143, 143]], [[191, 191]], [[128, 190]]],
      [[[244, 244]], [[143, 143]], [[128, 190]], [[128, 191]]],
    ],
  )
}

///|
test "['\\xff' '\\uffff']" {
  assert_eq(
    lower_unicode_charclass_to_utf8(
      @char_set.singleton('\u{ff}') + @char_set.singleton('\uffff'),
    ),
    [
      [@char_set.singleton('\u{c3}'), @char_set.singleton('\u{bf}')],
      [
        @char_set.singleton('\u{ef}'),
        @char_set.singleton('\u{bf}'),
        @char_set.singleton('\u{bf}'),
      ],
    ],
  )
}

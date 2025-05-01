///|
fn utf8_bytes_to_char(bytes : Bytes) -> Char {
  let decoder = @encoding.decoder(UTF8)
  let str = decoder.decode_lossy(bytes)
  guard str is [c]
  c
}

///| 
fn lower_unicode_charclass_to_utf8(
  cset : @char_set.T
) -> Array[Array[@char_set.T]] {
  fn get_masked_range_cset(
    bytes : Bytes,
    num_bytes : Int,
    mask_index : Int
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
          guard range.0 is min && range.1 is max
          let min_bytes = @encoding.encode(UTF8, String::make(1, min))
          let max_bytes = @encoding.encode(UTF8, String::make(1, max))
          if pin_index >= num_bytes {
            guard min_bytes == max_bytes
            branches.push(
              [
                ..min_bytes
                .iter()
                .map(fn(byte) {
                  @char_set.singleton(Char::from_int(byte.to_int()))
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
                  @char_set.singleton(Char::from_int(byte.to_int()))
                })
                .to_array(),
                @char_set.range(
                  Char::from_int(min_bytes[pin_index].to_int()),
                  Char::from_int(max_bytes[pin_index].to_int()),
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
        guard range.0 is min && range.1 is max
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
          guard mid_range.0 is min && mid_range.1 is max
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
  @json.inspect!(
    lower_unicode_charclass_to_utf8(@char_set.singleton('\u3000')),
    content=[[[["ã", "ã"]], [["", ""]], [["", ""]]]],
  )
  @json.inspect!(
    lower_unicode_charclass_to_utf8(@char_set.singleton('\u30ff')),
    content=[[[["ã", "ã"]], [["", ""]], [["¿", "¿"]]]],
  )
}

///|
test "['\\u3000'-'\\u30ff']" {
  @json.inspect!(
    lower_unicode_charclass_to_utf8(@char_set.range('\u3000', '\u30ff')),
    content=[
      [[["ã", "ã"]], [["", ""]], [["", ""]]],
      [[["ã", "ã"]], [["", ""]], [["", "¿"]]],
      [[["ã", "ã"]], [["", ""]], [["", "¿"]]],
      [[["ã", "ã"]], [["", ""]], [["¿", "¿"]]],
      [[["ã", "ã"]], [["", ""]], [["", "¾"]]],
      [[["ã", "ã"]], [["", ""]], [["", "¿"]]],
    ],
  )
}

///|
test "['\\x00'-'\\u{10ffff}']" {
  @json.inspect!(
    lower_unicode_charclass_to_utf8(@char_set.range('\u{00}', '\u{10ffff}')),
    content=[
      [[["\u0000", ""]]],
      [[["Â", "Â"]], [["", ""]]],
      [[["Â", "Â"]], [["", "¿"]]],
      [[["Ã", "Þ"]], [["", "¿"]]],
      [[["ß", "ß"]], [["¿", "¿"]]],
      [[["ß", "ß"]], [["", "¾"]]],
      [[["à", "à"]], [[" ", " "]], [["", ""]]],
      [[["à", "à"]], [[" ", " "]], [["", "¿"]]],
      [[["à", "à"]], [["", "¿"]], [["", "¿"]]],
      [[["á", "î"]], [["", "¿"]], [["", "¿"]]],
      [[["ï", "ï"]], [["¿", "¿"]], [["¿", "¿"]]],
      [[["ï", "ï"]], [["¿", "¿"]], [["", "¾"]]],
      [[["ï", "ï"]], [["", "¾"]], [["", "¿"]]],
      [[["ð", "ð"]], [["", ""]], [["", ""]], [["", ""]]],
      [[["ð", "ð"]], [["", ""]], [["", ""]], [["", "¿"]]],
      [[["ð", "ð"]], [["", ""]], [["", "¿"]], [["", "¿"]]],
      [[["ð", "ð"]], [["", "¿"]], [["", "¿"]], [["", "¿"]]],
      [[["ñ", "ô"]], [["", "¿"]], [["", "¿"]], [["", "¿"]]],
      [[["ô", "ô"]], [["", ""]], [["¿", "¿"]], [["¿", "¿"]]],
      [[["ô", "ô"]], [["", ""]], [["¿", "¿"]], [["", "¾"]]],
      [[["ô", "ô"]], [["", ""]], [["", "¾"]], [["", "¿"]]],
    ],
  )
}

///|
test "['\\xff' '\\uffff']" {
  assert_eq!(
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

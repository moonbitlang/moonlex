///|
struct BitArray(FixedArray[Int])

///|
pub fn BitArray::new(length : Int) -> BitArray {
  let num_words = (length + 31) / 32
  BitArray(FixedArray::make(num_words, 0))
}

///|
pub fn BitArray::unsafe_get(self : Self, index : Int) -> Int {
  (self.0[index / 32] >> (index % 32)) & 1
}

///|
pub fn BitArray::unsafe_set(self : Self, index : Int, value : Int) -> Unit {
  let word_index = index / 32
  let bit_index = index % 32
  let word = self.0[word_index]
  let new_word = if value != 0 {
    word | (1 << bit_index)
  } else {
    word & (1 << bit_index).lnot()
  }
  self.0[word_index] = new_word
}

///|
pub fn BitArray::iter(self : Self) -> Iter[Int] {
  let arr = self.0
  let mut word_index = 0
  let mut word = 0
  let mut base = 0
  Iter::new(fn() {
    while true {
      if word != 0 {
        let bit_pos = word.ctz()
        word = word & (word - 1)
        return Some(base + bit_pos)
      }
      if word_index >= arr.length() {
        return None
      }
      word = arr[word_index]
      base = word_index * 32
      word_index += 1
    }
    None
  }).iter()
}

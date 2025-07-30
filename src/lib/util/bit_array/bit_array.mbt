///|
type BitArray FixedArray[Int]

///|
pub fn BitArray::new(length : Int) -> BitArray {
  let num_words = (length + 31) / 32
  BitArray(FixedArray::make(num_words, 0))
}

///|
pub fn BitArray::unsafe_get(self : Self, index : Int) -> Int {
  (self.inner()[index / 32] >> (index % 32)) & 1
}

///|
pub fn BitArray::unsafe_set(self : Self, index : Int, value : Int) -> Unit {
  let word_index = index / 32
  let bit_index = index % 32
  let word = self.inner()[word_index]
  let new_word = if value != 0 {
    word | (1 << bit_index)
  } else {
    word & (1 << bit_index).lnot()
  }
  self.inner()[word_index] = new_word
}

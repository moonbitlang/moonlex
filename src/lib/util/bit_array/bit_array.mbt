///|
struct BitArray(FixedArray[Int])

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

///|
pub fn BitArray::iter(self : Self) -> Iter[Int] {
  Iter::new(yield_ => {
    for i in 0..<self.inner().length() {
      let mut word = self.inner()[i]
      if word == 0 {
        continue
      }
      // Use bit manipulation to efficiently find set bits
      // This uses the "clear lowest set bit" trick: word & (word - 1)
      // removes the lowest set bit, so we can iterate only through set bits
      let base = i * 32
      while word != 0 {
        // Find the position of the lowest set bit using count trailing zeros
        let bit_pos = word.ctz()
        if yield_(base + bit_pos) is IterEnd {
          return IterEnd
        }

        // Clear the lowest set bit
        word = word & (word - 1)
      }
    }
    IterContinue
  })
}

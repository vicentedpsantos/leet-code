# Given a positive integer, output its complement number. The complement strategy
#  is to flip the bits of its binary representation.
#
# Note:
# The given integer is guaranteed to fit within the range of a 32-bit signed integer.
# You could assume no leading zero bit in the integer’s binary representation.

def find_complement(num)
  num.to_s(2).gsub(/[10]/, '1' => '0', '0' => '1').to_i(2)
end

find_complement(5)
find_complement(2)
find_complement(1)

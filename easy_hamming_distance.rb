# The Hamming distance between two integers is the number of positions at which the corresponding bits are different.
#
# Given two integers x and y, calculate the Hamming distance.
#
# Note:
# 0 ≤ x, y < 231.
#
# Example:
#
# Input: x = 1, y = 4
#
# Output: 2
#
# Explanation:
# 1   (0 0 0 1)
# 4   (0 1 0 0)
#        ↑   ↑
#
# The above arrows point to positions where the corresponding bits are different.

def hamming_distance(x, y)
  (x ^ y).to_s(2).count('1')
end

hamming_distance(1, 4)
hamming_distance(42421, 42424)
hamming_distance(234829841, 481498278)

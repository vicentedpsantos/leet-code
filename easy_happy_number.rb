# Write an algorithm to determine if a number is 'happy'
#
# A happy umber is a number defined by the follow process: Starting with any positive
# integer, replace the number by the sum of the squares of its digits and repeat
# the process until the number equals 1 (where it will stay), or it loops endlessly
# in a cycle which does not include 1.
#
# Those numbers for which this process ends in 1 are happy numbers.
#
# Example:
# Input: 19
# Output: true
# Explanation:
# 1^2 + 9^2 = 82
# 8^2 + 2^2 = 68
# 6^2 + 8^2 = 100
# 1^2 + 0^2 + ^2 = 1

def is_happy(n)
  return false if n < 0
  arr = []
  loop do
    break if (n == 1 || arr.include?(n))
    arr << n
    n = sum_squares(n)
  end
  n == 1 ? true : false
end

def sum_squares(n)
  n.to_s.split('').map{ |digit| digit.to_i ** 2 }.inject(&:+)
end

p is_happy(19)
p is_happy(83)

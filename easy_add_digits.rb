# Given a non-negative integer num, repeatedly add all its digits until the result has only one digit.
#
# Example:
#
# Input: 38
# Output: 2
# Explanation: The process is like: 3 + 8 = 11, 1 + 1 = 2.
#              Since 2 has only one digit, return it.
# Follow up:
# Could you do it without any loop/recursion in O(1) runtime?

# Solution 1 - Using the concept of Digital Roots
def add_digits(num)
  num == 0 ? 0 : (num % 9 == 0 ? 9 : num % 9)
end

# Solution 2 - Looping through digits
def add_digits(num)
  n = split_and_sum(num)
  num.times { n = split_and_sum(n) }
  n
end

def split_and_sum(num)
  num.to_s.split('').map { |digit| digit.to_i}.inject(&:+)
end

p add_digits(38)
p add_digits(708538619)

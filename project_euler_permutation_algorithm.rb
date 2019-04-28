# A permutation is an ordered arrangement of objects. For example, 3124 is one
# possible permutation of the digits 1, 2, 3 and 4. If all of the permutations
# are listed numerically or alphabetically, we call ir lexicographic order.
# The lexicographic permutations of 0, 1 and 2 are: 012 021 102 120 201 210
#
# What is the millionth lexicographic permutations of the digit 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

def permute(digits)
  digits.permutation.to_a[999_999].join
end

p permute([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])

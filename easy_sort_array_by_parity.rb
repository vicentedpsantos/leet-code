# Given an array A of non-negative integers, return an array consisting of all the even elements of A, followed by all the odd elements of A.
#
# You may return any answer array that satisfies this condition.

def sort_array_by_parity(a)
  even = a.select { |number| number if number.even? }
  odd = a.select { |number| number if number.odd? }
  even.concat odd
end

sort_array_by_parity([3, 1, 2, 4])

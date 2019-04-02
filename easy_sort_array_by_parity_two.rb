# Given an array A of non-negative integers, half of the integers in A are odd,
# and half of the integers are even.
# Sort the array so that whenever A[i] is odd, i is odd; and whenever A[i] is
# even, i is even.
# You may return any answer array that satisfies this condition.
# Note:
#
# 2 <= A.length <= 20000
# A.length % 2 == 0
# 0 <= A[i] <= 1000

def sort_array_by_parity_ii(a)
  odds = a.select { |n| n.odd? }
  evens = a.select { |n| n.even? }

  result = []

  odds.length.times do |i|
    result.unshift(odds[i])
    result.unshift(evens[i])
  end
  result
end

sort_array_by_parity_ii([4,2,5,7])

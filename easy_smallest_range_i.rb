# Given an array A of integers, for each integer A[i] we may choose any x
# with -K <= x <= K, and add x to A[i].
# After this process, we have some array B.
#
# Return the smallest possible difference between the maximum value of B and
# the minimum value of B.

def smallest_range_i(a, k)
  result = a.max - a.min - 2 * k
  result >= 0 ? result : 0
end

smallest_range_i([0,10], 2)
smallest_range_i([1, 3, 6], 3)
smallest_range_i([1], 0)
smallest_range_i([32, 78, 129], 25)
smallest_range_i([32, 78, 129], 150)
smallest_range_i([3, 2, 4, 2], 1)

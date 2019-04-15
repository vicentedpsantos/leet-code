# Given an array of n positive integers and a positive integer s, find the
# minimal length of a contiguous subarray of which the sum ≥ s. If there isn't
# one, return 0 instead.
#
# Example:
#
# Input: s = 7, nums = [2,3,1,2,4,3]
# Output: 2
# Explanation: the subarray [4,3] has the minimal length under the problem constraint.
# Follow up:
# If you have figured out the O(n) solution, try coding another solution of which
# the time complexity is O(n log n).

def min_sub_array_len(s, nums)
  total = left = right = 0
  res = nums.length + 1

  (right..nums.length - 1).each do
    total += nums[right]
    while total >= s
      res = [res, right - left + 1].min
      total -= nums[left]
      left += 1
    end
    right += 1
  end
  res <= nums.length ? res : 0
end

min_sub_array_len(7, [2, 3, 1, 2, 4, 3])

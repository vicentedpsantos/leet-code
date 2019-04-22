# Given a sorted array nums, remove the duplicates in-place such that each
# element appear only once and return the new length.
#
# Do not allocate extra space for another array, you must do this by modifying
# the input array in-place with O(1) extra memory.
#
# Example 1:
#
# Given nums = [1,1,2],
#
# Your function should return length = 2, with the first two elements of nums
# being 1 and 2 respectively.
#
# It doesn't matter what you leave beyond the returned length.

# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return if nums.length == 0

  nums.length.times { |i| nums[i] = nil if nums[i] == nums[i + 1] }
  nums.delete(nil)
end

p remove_duplicates([1,1,2])
p remove_duplicates([0,0,1,1,1,2,2,3,3,4])

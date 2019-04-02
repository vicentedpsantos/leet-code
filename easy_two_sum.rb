# Given an array of integers, return indices of the two numbers such that they
# add up to a specific target.
#
# You may assume that each input would have exactly one solution, and you may
# not use the same element twice.

def two_sum(nums, target)
  nums.length.times do |i|
    nums.length.times do |j|
      return [i, j] if nums[i] + nums[j] == target && i != j
    end
  end
end

two_sum([2, 7, 11, 15], 9)
two_sum([2, 1, 6, 3], 4)

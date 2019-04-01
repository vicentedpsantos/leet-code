# Given an array of integers that is already sorted in ascending order, find two numbers such that they add up to a specific target number.
#
# The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2.
#
# Note:
#
# Your returned answers (both index1 and index2) are not zero-based.
# You may assume that each input would have exactly one solution and you may not use the same element twice.

def two_sum(numbers, target)
  size = numbers.length
  i = 0
  j = size - 1

  while numbers[i] + numbers[j] != target
    i += 1 if (numbers[i] + numbers[j]) < target
    j -= 1 if (numbers[i] + numbers[j]) > target
  end

  [i + 1, j + 1]
end

two_sum([2, 7, 11, 15], 9)

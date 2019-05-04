# Given a string that consists of only uppercase English letters, you can replace
# any letter in the string with another letter at most k times. Find the length
# of a longest substring containing all repeating letters you can get after
# performing the above operations.
#
# Note:
# Both the string's length and k will not exceed 104.
#
# Example 2:
#
# Input:
# s = "AABABBA", k = 1
#
# Output:
# 4
#
# Explanation:
# Replace the one 'A' in the middle with 'B' and form "AABBBBA".
# The substring "BBBB" has the longest repeating letters, which is 4.


# Resorted to using a Sliding Window algorithm.
def character_replacement(string, times)
  left = 0
  right = times
  max_occurence = 0
  res = 0

  letters = string.split('').uniq

  window = string[left..right]

  string.length.times do
    letters.each do |letter|
      max_occurence = window.count(letter) unless max_occurence > window.count(letter)
    end

    if window.length - max_occurence == times
      res = window.length
      right += 1
      window = string[left..right]
    elsif (window.length - max_occurence >= 0 && window.length - max_occurence < times)
      right += 1
      window = string[left..right]
      res = window.length
    elsif window.length - max_occurence > times
      left += 1
      right += 1
      window = string[left..right]
    else
      right += 1
      window = string[left..right]
    end
  end
  res
end

p character_replacement("ABAB", 2)
p character_replacement("ACCABDCBABB", 3)
p character_replacement("AABABBA", 1)
p character_replacement("AAAA", 2)
p character_replacement("AAAB", 0)
p character_replacement("ABAA", 0)
p character_replacement("AABA", 0)

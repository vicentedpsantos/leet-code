# Give a string s, count the number of non-empty (contiguous) substrings that
# have the same number of 0's and 1's, and all the 0's and all the 1's in these
# substrings are grouped consecutively.
#
# Substrings that occur multiple times are counted the number of times they occur.
#
# Example 1:
# Input: "00110011"
# Output: 6
# Explanation: There are 6 substrings that have equal number of consecutive 1's and 0's: "0011", "01", "1100", "10", "0011", and "01".
#
# Notice that some of these substrings repeat and are counted the number of times they occur.
#
# Also, "00110011" is not a valid substring because all the 0's (and 1's) are not grouped together.
# Example 2:
# Input: "10101"
# Output: 4
# Explanation: There are 4 substrings: "10", "01", "10", "01" that have equal number of consecutive 1's and 0's.
# Note:
#
# s.length will be between 1 and 50,000.
# s will only consist of "0" or "1" characters.

def count_binary_substrings(s)
  return 0 if s.length == 2 && ((s[0] == '0' && s[1] == '0') || (s[0] == '1' && s[1] == '1'))
  cur = 0
  pre = 0
  res = 0

  (0..s.size - 1).each do |i|
    if s[i] == s[i - 1]
      cur += 1
    else
      res += [cur, pre].min
      pre = cur
      cur = 1
    end
  end

  res + [cur, pre].min
end

# count_binary_substrings('00110011') #=> 6
# count_binary_substrings('10101') #=> 4
# count_binary_substrings('0110001111')
# count_binary_substrings('111000') #=> 3
# count_binary_substrings('00') #=> 0
count_binary_substrings('00100') #=> 2

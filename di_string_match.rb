# Given a string S that only contains "I" (increase) or "D" (decrease), let N = S.length.
#
# Return any permutation A of [0, 1, ..., N] such that for all i = 0, ..., N-1:
#
# If S[i] == "I", then A[i] < A[i+1]
# If S[i] == "D", then A[i] > A[i+1]

def di_string_match(s)
  min = 0
  n = max = s.size
  result = []

  chars = s.scan /\w/
  chars.each_with_index do |element, index|
    if element == 'I'
      result[index] = min
      min += 1
    else
      result[index] = max
      max -= 1
    end
  end
  result[n] = max
  result
end

di_string_match('IDID')
di_string_match('III')
di_string_match('DDI')

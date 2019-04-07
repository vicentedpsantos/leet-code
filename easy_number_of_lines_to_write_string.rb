# We are to write the letters of a given string S, from left to right into lines.
# Each line has maximum width 100 units, and if writing a letter would cause the
# width of the line to exceed 100 units, it is written on the next line. We are
# given an array widths, an array where widths[0] is the width of 'a', widths[1]
# is the width of 'b', ..., and widths[25] is the width of 'z'.
#
# Now answer two questions: how many lines have at least one character from S,
# and what is the width used by the last such line? Return your answer as an integer list of length 2.

def number_of_lines(widths, s)
  alphabet_widths_hash = map_widths_to_letters(widths)
  result = 0
  rows = 0

  s.each_char do |char|
    result += alphabet_widths_hash[char]
    if result > 100
      rows += 1
      result = alphabet_widths_hash[char]
    elsif result == 100
      rows += 1
      result = 0
    end
  end
  result == 0 ? [rows, result] : [rows + 1, result]
end

def map_widths_to_letters(widths)
  alphabet = ('a'..'z').to_a
  Hash[alphabet.zip widths]
end

number_of_lines([10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10], 'abcdefghijklmnopqrstuvwxyz')
number_of_lines([4, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10], 'bbbcccdddaaa')

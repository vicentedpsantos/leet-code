# A self-dividing number is a number that is divisible by every digit it contains.
#
# For example, 128 is a self-dividing number because 128 % 1 == 0, 128 % 2 == 0,
# and 128 % 8 == 0.
#
# Also, a self-dividing number is not allowed to contain the digit zero.
#
# Given a lower and upper number bound, output a list of every possible self
# dividing number, including the bounds if possible.
#
# Example 1:
# Input:
# left = 1, right = 22
# Output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]

def self_dividing_numbers(left, right)
  result_array = []

  (left..right).each do |i|
    arr = array_of_digits(i)

    self_dividing = true
    arr.length.times do |digit|
      if arr[digit] == 0
        self_dividing = false
      else
        self_dividing = false if i % arr[digit] != 0
      end
    end
    result_array << i if self_dividing
  end

  result_array
end

def array_of_digits(number)
  number_string = number.to_s
  arr = []
  number_string.length.times do |i|
    arr << number_string[i].to_i
  end
  arr
end

self_dividing_numbers(1, 22)

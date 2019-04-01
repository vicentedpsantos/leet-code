# Given an array of integers A sorted in non-decreasing order, return an array of the squares of each number, also in sorted non-decreasing order.

def sorted_squares(a)
  new_array = a.map { |number| number * number }
  new_array.sort
end

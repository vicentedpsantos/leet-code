# In a array A of size 2N, there are N+1 unique elements, and exactly one of these elements is repeated N times.
#
# Return the element repeated N times.

def repeated_n_times(a)
  n = a.length / 2

  a.length.times do |position|
    return a[position] if a.count(a[position]) == n
  end
end

repeated_n_times([1, 2, 3, 3])
repeated_n_times([2, 1, 2, 5, 3, 2])
repeated_n_times([5, 1, 5, 2, 5, 3, 5, 4])

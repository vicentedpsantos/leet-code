# You're given strings J representing the types of stones that are jewels, and S
# representing the stones you have.  Each character in S is a type of stone you
# have.  You want to know how many of the stones you have are also jewels.
#
# The letters in J are guaranteed distinct, and all characters in J and S are
# etters. Letters are case sensitive, so "a" is considered a different type of
# stone from "A".

def num_jewels_in_stones(j, s)
  total_jewels = 0
  s.length.times do |stone|
    j.length.times do |jewel|
      total_jewels += 1 if j[jewel] == s[stone]
    end
  end
  total_jewels
end

num_jewels_in_stones('aA', 'aAAbbBbb')
num_jewels_in_stones('z', 'zZZzzaaZZ')

# You are given the following information, but you may prefer to do some
# research for yourself.
#
# 1 Jan 1900 was a Monday
# Thirty days has September, April, June and November. All the rest have
# thirty-one, saving February alone, which has twenty-eight, rain or shine, and
# on leap years twenty-nine. A leap year occurs on any year evenly divisible by
# 4, but not on a century unless it is divisible by 400.
# How many Sundays fell on the first of the month during the twentieth century
# (1 Jan 1901 to 31 Dec 2000)?

require 'date'

start_date = Time.local(1_901)
end_date = Time.local(2_000, 12, 31)
sunday_counter = 0

while end_date >= start_date
  if end_date.strftime("%A") == "Sunday" && end_date.strftime("%d") == "01"
    sunday_counter += 1
  end
  end_date -= 86_400
end

p sunday_counter

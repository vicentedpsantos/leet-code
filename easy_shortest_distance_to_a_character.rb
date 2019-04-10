# Given a string S and a character C, return an array of integers representing
# the shortest distance from the character C in the string.

def shortest_to_char(s, c)
  pos_of_e = s.split('').map.with_index { |e, i| e == c ? i : nil }.compact

  result = []
  s.length.times do |tested|
    temp = s.length

    pos_of_e.length.times do |i|
      if tested < pos_of_e[i]
        temp = pos_of_e[i] - tested if pos_of_e[i] - tested < temp
      elsif pos_of_e[i] < tested
        temp = tested - pos_of_e[i] if tested - pos_of_e[i] < temp
      elsif tested == pos_of_e[i]
        temp = 0
      end
    end
    
    result << temp
  end

  result
end

# shortest_to_char('loveleetcode', 'e') #=> [3,2,1,0,1,0,0,1,2,2,1,0]
shortest_to_char('aaab', 'b') #=> [3, 2, 1, 0]

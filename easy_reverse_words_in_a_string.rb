# Given a string, you need to reverse the order of characters in each word within
# a sentence while still preserving whitespace and initial word order.

def reverse_words(s)
  s.split(' ').map(&:reverse!).join(' ')
end

reverse_words('Let\'s fart this place up')
reverse_words('A random string to be tested!')

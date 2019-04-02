# def common_chars(a)
#   a.first.chars.uniq.map { |c| [c, a.map { |w| w.count(c) }.min] }.map { |c, n| c * n }.join.split('')
# end
#
# # [e, l, l]
#
# common_chars(%w[bella label roller])

def common_chars(a)
  a.first.chars.uniq.map { |c| [c, a.map { |w| w.count(c) }.min] }.map { |c, n| c * n }.join.split('')
end

common_chars(%w[bella label roller])

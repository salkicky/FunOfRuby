# encoding:shift_jis

#
# ���d���
#

# �����̖߂�l���󂯎��

def coordinate()
  x = 1
  y = 2
  z = 3

  return x, y, z
end

p coordinate()

a, b, c = coordinate()
p a
p b 
p c

d, e = coordinate()
p d      # => 1 
p e      # => 2

var = coordinate()
p var    # => [1,2,3]

var.each do |w|
  puts w*2
end

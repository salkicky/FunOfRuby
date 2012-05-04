#encoding:shift_jis

str = "abcde"
enum = str.enum_for(:each_byte)

ary = enum.each do |byte|
  p byte
end

ary = enum.collect do |byte|
  byte
end

p ary

str = "AA\nBB\nCC\n"
p str.each_line.collect{|line| line.chop }
p str.each_byte.reject{|c| c == 0x0a }


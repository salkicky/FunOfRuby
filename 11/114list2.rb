#encoding:shift_jis

list = %w(a b c d)
list.each_with_index do |elen, i|
  print i+1, "�Ԗڂ̗v�f��", elen, "�ł��B\n"
end

# 11.9.3 

while item = list.pop
  puts item
end
p list

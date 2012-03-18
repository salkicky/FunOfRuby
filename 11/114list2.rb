#encoding:shift_jis

list = %w(a b c d)
list.each_with_index do |elen, i|
  print i+1, "番目の要素は", elen, "です。\n"
end

# 11.9.3 

while item = list.pop
  puts item
end
p list

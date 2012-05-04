#encoding:shift_jis

ary = %w(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20)
num = 0      # 呼び出し回数

sorted = ary.sort do |a, b|
  a <=> b
end

sorted = ary.sort do |a, b|
  num += 2
  a.length <=> b.length
end

p num

num = 0
ary.sort_by do |item|
  num+=1
  item.length
end
p num

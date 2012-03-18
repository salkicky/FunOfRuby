#!/usr/bin/ruby
#encoding:shift_jis

puts "====== times ========="

ary = []
10.times do |i|
  ary << i
end

p ary

puts "====== from.upto ======"

ary = []
2.upto(10) do |i|
  ary << i
end

p ary

puts "====== from.downto ====="

ary = []
10.downto(2) do |i|
  ary << i
end

p ary

puts "====== from.step ========"

ary = []
2.step(10,3) do |i|
  ary << i
end
p ary

ary = []
10.step(2,-3) do |i|
  ary << i
end
p ary

puts "------------ Enumerable::Enumerator -----"

ary = 2.step(10).collect{|i| i * 2}
p ary


a = 0.1 + 0.2
p a 
b = (a==0.3)
p b

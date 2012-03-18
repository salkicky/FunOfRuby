#!/usr/bin/ruby
#encoding:shift_jis

puts "======= (1) ========"

def cels2fahr(cels)
  fahr = cels * 9 / 5 + 32
end
p cels2fahr(10)

puts "===== (2) ========"

def fahr2cels(fahr)
  cels = (fahr - 32) * 5 / 9
end

1.step(100) do |i|
  puts i.to_s + " | " + cels2fahr(i).to_s
end

puts "===== (3) ========"

p rand(6)

puts "===== (4) ========"

def dice10()
  sum = 0
  10.times do |i|
    sum += rand(6)
  end
  sum
end
p dice10()

puts "====== (5) ========"



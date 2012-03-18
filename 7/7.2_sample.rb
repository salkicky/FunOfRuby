#!/usr/bin/ruby
# encoding : shift_jis

ary = "10, 20, 30, 40".split(",")
p ary

ary.each do |i|
  p i.to_i
end

p [1,2,3,4].index(2)

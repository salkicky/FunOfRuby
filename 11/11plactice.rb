#encoding:shift_jis


puts "==== (1) ====="

a = Array.new(100){|i| i + 1}
p a


puts "==== (2) ====="

a2 = a.map{|i| i*100}
p a2


puts "==== (3) ====="

a3 = a.reject{|i| (i % 3) != 0}
p a3

a4 = Array.new(100){|i| i+1}
a4.reject!{|i| (i % 3) != 0}
p a4

puts "==== (4) ===="

a.reverse!
p a

puts "==== (5) ===="

sum = 0
a.each do |i|
  sum += i
end
p sum

puts "==== (6) ===="

ary = Array.new(100){|i| i+1}
result = Array.new
10.times do |i|
  result << ary[(10*i)..(10*i+9)]
end
p result 

puts "==== (7) ===="

def sum_array(nums1, nums2)
  sum = []
  nums1.zip(nums2) do |a, b|
    sum << (a + b)
  end
  return sum
end

p sum_array([1,2,3], [4,5,6])




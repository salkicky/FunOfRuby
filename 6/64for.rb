# encoding : shift_jis

sum = 0
for i in 1..5
  sum = sum + i 
end
print sum, "\n"


ary = [1, "aa", 0.5]
for i in ary
  puts i
end


from = 10
to = 20
sum = 0
(to-from+1).times do |i|
  sum = sum + (i+from)
end
print sum, "\n"


sum = 0
for i in from..to
  sum = sum + i
end
print sum, "\n"


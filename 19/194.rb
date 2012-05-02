# ”ÍˆÍ‰‰ŽZŽq

Range.new(1, 10)
1..10

sum = 0
for i in 1..5
  sum += i
end
print sum, "\n"

alpha = ["a", "b", "c", "d", "e", "f"]
alpha[2..4] = ["C", "D", "E"]
p alpha
p alpha[2..4]
p alpha[2...4]

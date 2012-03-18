#!/usr/bin/ruby
#encoding:shift_jis

puts "=== 11.2 ====="

nums = [1,2,3,4,5]
strs = ["a","b","c","d"]

a = Array.new
p a         # => []
a = Array.new(5)
p a         # => [nil,nil,nil,nil,nil]
a = Array.new(5,0)
p a

lang = %w(Ruby Perl Python Scheme Pike REBOL)
p lang

iroha = %w(い ろ は に ほ へ と)
p iroha

la = %w|a i 9 o a|
p la

color = {"black"=>"#000000", "white"=>"#FFFFFF"}
p color
p color.to_a

# 文字列のsplitメソッドを使う

column = "2010/01/09 22:33 foo.html proxy.example.jp".split()
p column
p column[-1]
p column[1..3]

strs = ["a","b","c","d"]
p strs[1]
p strs[-1]
p strs[-2]
p strs[1..3]

p strs[2,2]
p strs[2,1]

p strs.at(1)
p strs.slice(2)

strs[1] = "B"
p strs
strs[2,3] = ["B","C","D"]
p strs
strs[1,0] = "Z"
p strs

alpha = %w(a b c d e f)
p alpha.values_at(1,3,5)

# 集合としての配列

p strs & alpha     # => "a"
p strs | alpha

p strs - alpha     # => "a"を除いた配列

num = [1 , 2, 3]
even = [2, 4, 6]
p (num + even)
p (num | even)

# 列としての配列

alpha = %w(a b c d e f)
p alpha.push("g")
p alpha.shift
p alpha
p alpha.first
p alpha
p alpha.pop
p alpha
p alpha.last
p alpha

a = Array.new(3) do
  [0, 0, 0]
end
p a
a[0][1] = 2
p a

a  = Array.new(5){|i| i + 1}
p a

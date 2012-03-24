# encoding:shift_jis


puts "-----普通の例------"

a, b = 0, 1
tmp = a           # aの値をtmpに逃しておいて
a = b             # aにbの値を代入する
b = tmp           # 最少のaの値をbに代入する
p [a, b]          # => [1. 0]


puts "----多重代入------"

a, b = 0, 1
a, b = b, a
p [a, b]

puts "----配列の要素を取り出す-----"

ary = [1,2]
a, b = ary
p "a = #{a}"
p "b = #{b}"

ary = [1,2]
a, = ary
p a

def foo(a, b, c)
  a + b + c
end
ary = [2,3]
p foo(4, *ary)

def foo2(*args)
  p args
end
foo2(1,2,3,4,5)

puts "-----入れ子配列----"

ary = [1, [2, 3], 4]
a, (b1, b2), c = ary
p a
p b1
p b2
p c

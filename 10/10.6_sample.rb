#!/usr/bin/ruby
#encoding:shift_jis

p rand      # => 0.1352...
p rand(100) # => 31
p rand(100) # => 84

srand(1)     # 疑似乱数を初期化する
p [rand, rand, rand]
srand(1)
p [rand, rand,rand]

p Random.rand

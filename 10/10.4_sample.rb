#! /user/bin/ruby
#encoding:shift_jis

p 10.to_f     # => 10.0
p 10.8.to_i   # => 10
p -10.8.to_i  # => -10
p "1243".to_i # => 1243
p "12.3".to_f # => 12.3

p 1.2.round
p 1.8.round
p -1.2.round
p -1.8.round

p 1.5.ceil
p -1.5.ceil
p 1.5.floor
p -1.5.floor
p 1.5.floor
p -1.5.floor

p "-----------"

p 1.5.to_r
p Rational(1,2).to_f
p 1.5.to_c
p Rational(1,2)



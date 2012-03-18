#!/usr/bin/ruby
#encoding:shift_jis

r = Rational(2, 5) + Rational(1, 3)
p r

p r.to_f

# ==========

c = Complex(0, 2) ** 2
p c

# =========
puts "[10.2]"

p 1234567     # => 1234567
p 1_234_567   # => 1234567
p 0b11111111  # => 255
p 01234567
p 0o1234567
p 0d1234567
p 0x1234567


p 1.234
p 1.234e4
p 1.234e-4


p 5 ** -2.0   # => 0.04
p 5 ** -2     # => (1//25)


p 10.divmod(3.5)
p 10.divmod(-3.5)
p -10.divmod(3.5)
p -10.divmod(-3.5)

p 10.remainder(3.5)      # => 3.0
p 10.remainder(-3.5)     # => 3.0
p -10.remainder(3.5)     # => -3.0
p -10.remainder(-3.5)    # => -3.0

#p 1 / 0           # => ERROR => ZeroDivisionError
p 1 / 0.0          # => Infinity
p 0 / 0.0          # => NaN
#p 1.divmod(0)      # => ERROR => ZeroDivisionError
p 1.divmod(0.0)    # => ERROR => FloatDomainError


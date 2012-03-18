# encoding: Shift_JIS

sym = :foo
sym2 = :"foo"

str = sym.to_s
p str
sym2 = str.intern
p sym2

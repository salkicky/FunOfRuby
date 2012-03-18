# encoding : shift_jis

ary = Array.new
p ary     #=> []

ary = []
str = "Hello, world."
p ary.class     #=> Array
p str.class     #=> String

ary = []
str = "Hello, world."
p ary.instance_of?(Array)     #=> true
p str.instance_of?(String)    #=> true
p ary.instance_of?(String)    #=> false
p str.instance_of?(Array)     #=> false

str = "This is a String."
p str.is_a?(String)     #=> true
p str.is_a?(Object)     #=> true


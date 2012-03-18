#!/usr/bin/ruby
#encoding: shift_jis

def test_throw
  throw :test
end

puts "test start"
catch(:test) do
  puts "before test_throw()"
  test_throw()                     # ここで例外発生
  puts "after test_throw()"        # ここは実行されない
end

puts "test end"

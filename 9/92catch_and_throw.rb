#!/usr/bin/ruby
#encoding: shift_jis

def test_throw
  throw :test
end

puts "test start"
catch(:test) do
  puts "before test_throw()"
  test_throw()                     # �����ŗ�O����
  puts "after test_throw()"        # �����͎��s����Ȃ�
end

puts "test end"

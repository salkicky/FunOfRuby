#!/usr/bin/ruby
#encoding:shift_jis

file = ARGV[0]
begin
  io = open(file)
rescue
  sleep 10
  retry
end

data = io.read
io.close


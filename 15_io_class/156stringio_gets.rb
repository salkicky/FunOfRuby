# encoding:shift_jis

require "stringio"

io = StringIO.new("A\nB\nC\n")
p io.gets   #=> "A\n"
p io.gets
p io.gets
p io.gets

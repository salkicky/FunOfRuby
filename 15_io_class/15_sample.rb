# encoding:shift_jis

#### 15.1 #######

ifile = open("foo.txt")
while line = ifile.gets
  puts line
end
ifile.close

puts

# ifile = open("foo.txt","a+")
# ifile.puts("------end------\n")
# ifile.close

File.open("foo.txt") do |io|
  while line = io.gets
    puts line
  end
end

io = File.open("foo.txt")
p io.closed?
io.close
p io.closed?

data = File.read("foo.txt")
p data

#### 15.2 #########

io = open("foo.txt")
while line = io.gets
  p line
  line.chomp!
  p line
end

puts "####### each"
io.rewind
io.each do |line|
  p line
end

puts "####### readlines"
io.rewind
ary = io.readlines
ary.each do |line|
  p line
end

puts "### lineno ###"
io.rewind
while line = io.gets
  print "#{io.lineno} : #{line}"
end

puts "### getc ###"
io.rewind
while ch = io.getc
  p ch
end

io.close

puts "### ungetc ###"
File.open("Hello.txt") do |io|
  p io.gets
  io.rewind
  p (c=io.getc)
  p io.gets
  io.rewind
  io.ungetc(c)
  p io.gets
end

puts "### each_byte ###"
open("Hello.txt") do |io|
  io.each_byte do |ch|
    p ch
  end
end

puts "### each_char ###"
open("Hello.txt") do |io|
  io.each_char do |c|
    p c
  end
end

puts "### read ###"
open("Hello.txt") do |io|
  p io.read(3)
  p io.read
end

open("foo.txt") do |io|
  p io.read(3)
  p io.read
end

puts "### puts ###"
$stdout.puts "foo", "bar", "baz"

puts "### write ###"
size = $stdout.write("hello.\n")    # => hello.
p size                              # => 8

$stdout << "foo " << "bar " << "baz\n"

##### 15.7 ########

p Encoding.default_external
p Encoding.default_internal
File.open("foo.txt") do |f|
  p f.external_encoding
  p f.internal_encoding
end




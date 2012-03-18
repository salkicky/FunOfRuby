#encoding:shift_jis

filename = ARGV[0]
if !(/.txt$/ =~ filename)
  print "#{filename} is not textfile.\n"
  exit
end

ary = Array.new

open(filename) do |io|
  context = io.read
  p context

  ary = context.split("\n")
end

open("foo"+filename,"w") do |io|
  io.write(ary.pop)
end

puts open("foo"+filename).readlines


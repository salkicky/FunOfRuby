#encoding:shift_jis

filename = ARGV[0]
if !(/.txt$/ =~ filename)
  print "#{filename} is not textfile.\n"
  exit
end

firstline = "" 
open(filename) do |io|
  firstline = io.gets
end

open("foo"+filename, "w") do |io|
  io.puts(firstline)
end

puts open("foo"+filename).readlines

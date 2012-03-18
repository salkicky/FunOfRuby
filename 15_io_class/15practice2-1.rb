# encoding:shift_jis

puts "#### (2) #####"

filename = ARGV[0]

if !(/.txt$/ =~ filename)
  print "#{filename} is not textfile.\n"
  exit
end

# 一旦、ファイル内容をすべて読み出して行ごとに配列化
print "\nRead #{filename}\n"
io = open(filename)
lines = io.readlines
print lines,"\n"
io.close

p io.closed?


# ファイルへ逆順に書き込み
print "\nWriteReverse #{filename}\n"
open(filename,"w+") do |io|
  while line = lines.pop
    io.write(line)
  end
end

print "\nRead #{filename}\n"
puts open(filename).readlines


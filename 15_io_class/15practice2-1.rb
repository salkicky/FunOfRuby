# encoding:shift_jis

puts "#### (2) #####"

filename = ARGV[0]

if !(/.txt$/ =~ filename)
  print "#{filename} is not textfile.\n"
  exit
end

# ��U�A�t�@�C�����e�����ׂēǂݏo���čs���Ƃɔz��
print "\nRead #{filename}\n"
io = open(filename)
lines = io.readlines
print lines,"\n"
io.close

p io.closed?


# �t�@�C���֋t���ɏ�������
print "\nWriteReverse #{filename}\n"
open(filename,"w+") do |io|
  while line = lines.pop
    io.write(line)
  end
end

print "\nRead #{filename}\n"
puts open(filename).readlines


# encoding:shift_jis

moji = "������"

desc = %Q{Ruby�̕�����ɂ́u''�v���u""�v��\n�g���܂��B}
str = %q{Ruby said, \n'Hello world!'}
puts desc
puts str

str = %q|aaaa|
puts str

# �q�A�h�L�������g

10.times do |i|
  10.times do |j|
    print(<<-"EOB")
    i: #{i}
    j: #{j}
    i*j = #{i*j}
    EOB
  end
end

str = <<-EOB
Hello!
Hello!
Hello!
EOB
puts str

# 12.2 ������̒����𓾂�

p "just another ruby hacker,".length
p "just another ruby hacker,".size
str = '�I�u�W�F�N�g�w���v���O���~���O����'
p str.bytesize


str = "abcdef"
p str[0]
p str[0].chr 
p str[1]
p str[1].ord

p str.chop
p str
p str.chop!
p str

str << "\n"
p str
p str.chomp
p str
p str.chomp!
p str
p str.chomp!
p str

str = "sumomomomomomomomomomouchi"
p str.index("momo")
p str.rindex("momo")
p str.include?("ou")

str[str.index("momomomomomo")] = "ss"
p str

str = "Hello, Ruby."
p str.slice!(-1)
p str

# 12.9.2

# each_line���\�b�h�Ŏ��o�����s��collect���\�b�h�ŏ�������
str = "��\n��\n��\n"
p str
tmp = str.each_line.collect do |line|
  line.chomp * 3
end
p tmp
#each_byte���\�b�h�Ŏ��o�������l��collect���\�b�h�ŏ�������
str = "abcde"
tmp = str.each_byte.collect do |byte|
  -byte
end
p tmp
# each_char���\�b�h�Ŏ��o�������l��collect���\�b�h�ŏ�������
tmp = str.each_char.collect do |c|
  c * 2
end
p tmp
p str.concat("aaa")
p str
p str.delete("aaa")
p str
p str.delete!("aaa")
p str
p str.reverse!
p " aa  bb  cc  dd  ".strip 
p str.upcase!.reverse!
p str.capitalize!
p str.swapcase!

str = "abcdefg"
p str.tr!("b", "B")
p str.tr!("b-e", "B-E")

require "nkf"
euc_str = "���{��EUC�̕�����ł�"
utf8_str = NKF.nkf("-w -xm0", euc_str)
p utf8_str.encoding
sjis_str = utf8_str.encode("shift_jis")
p sjis_str.encoding
sjis_str.encode!("utf-8")
p sjis_str.encoding
sjis_str.encode!("shift_jis")

#encoding: shift_jis
#
# ipconfig�̏o�͌��ʂ���A�w��p�^�[���𔲂��o���ďo�͂���
#  �������F���K�\��
#  �������F�t�@�C�����i.txt�Ȃ���s����j

pattern = Regexp.new(ARGV[0])
filename = ARGV[1]
if /.txt$/ =~ filename
  file = open("|ipconfig")
end

puts "pattern = #{pattern}"

while text = file.gets do
  if pattern =~ text
    print "#{file.lineno}:#{text}"
  end
end

# encoding : shift_jis

file = open(ARGV[0])
while text = file.gets
  next if /^\s*$/ =~ text     # �󔒍s�Ȃ�
  next if /^#/ =~ text        # �V���[�v�Ŏn�܂�s�Ȃ�
  print text
end


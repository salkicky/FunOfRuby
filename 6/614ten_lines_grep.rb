# encoding : shift_jis

pattern = Regexp.new(ARGV[0])
filename = ARGV[1]
max_matches = 10          # �o�͂���ő吔
matches = 0               # �}�b�`�����s��
file = open(filename)
while  text = file.gets
  if matches >= max_matches
    break
  end
  if pattern =~ text
    matches += 1
    print text
  end
end

# encoding:shift_jis

# �P�ꐔ�̃J�E���g

count = Hash.new(0)

## �P��̏W�v
while line = gets
  words = line.split
  words.each do |word|
    count[word] += 1
  end
end

## ���ʂ̏o��
count.sort{|a,b|
  # < �}�C�i�X    = 0     > �v���X
  a[1] <=> b[1]
}.each do |key, value|
  print "#{key}: #{value}\n"
end


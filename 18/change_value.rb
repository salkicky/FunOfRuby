# encoding:shift_jis


puts "-----���ʂ̗�------"

a, b = 0, 1
tmp = a           # a�̒l��tmp�ɓ����Ă�����
a = b             # a��b�̒l��������
b = tmp           # �ŏ���a�̒l��b�ɑ������
p [a, b]          # => [1. 0]


puts "----���d���------"

a, b = 0, 1
a, b = b, a
p [a, b]

puts "----�z��̗v�f�����o��-----"

ary = [1,2]
a, b = ary
p "a = #{a}"
p "b = #{b}"

ary = [1,2]
a, = ary
p a

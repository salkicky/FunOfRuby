#!/usr/bin/ruby
#encoding:shift_jis

# �t�@�C���̑��݂𒲂ׂ�
p FileTest.exist?("ruby")
p FileTest.exist?(".\\8.4_sample.rb")
# �t�@�C���T�C�Y
p FileTest.size(".\\8.4_sample.rb")

# �~����
p Math::PI
# 2�̕�����
p Math.sqrt(2)

include Math
p PI
p sqrt(2)

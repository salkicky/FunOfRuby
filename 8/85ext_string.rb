#!/usr/bin/ruby
#encoding:shift_jis
#
# �N���X���g������
#

class String
  def count_word
    ary = self.split(/\s+/)     # �������g���󔒕����ŕ�������
    return ary.size             # ������̔z��̗v�f��Ԃ�
  end
end

str = "Just Another Ruby Newbie"
p str.count_word          #=>4

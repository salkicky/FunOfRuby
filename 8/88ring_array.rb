#!/usr/bin/ruby
#encoding:shift_jis
#
# �p��
#

class RingArray < Array           # �X�[�p�[�N���X���w�肷��
  def [](i)                       # ���Z�q[]�̍Ē�`
    idx = i % size                # �V�����C���f�b�N�X�����߂�
    super(idx)                    # �X�[�p�[�N���X�̓����̃��\�b�h���Ă�
  end
end

eto = RingArray[ "1", "2", "3"]

p eto[0]
p eto[1]
p eto[2]
p eto[3]
p eto[4]

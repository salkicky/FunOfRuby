#!/usr/bin/ruby
#encoding:shift_jis
#
# ���\�b�h�Ăяo���̐���
#

class AccTest
  def pub
    puts "pus is a public method."
  end

  public  :pub        # pub ���\�b�h��public�ɐݒ�(�w�肵�Ȃ��Ă��悢)
  
  def priv
    puts "priv is a private method."
  end

  private :priv
end

acc = AccTest.new
acc.pub           #=> pus is a public method
acc.priv          #=> �G���[

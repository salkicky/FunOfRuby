#!/usr/bin/ruby
#encoding:shift_jis
#
# メソッド呼び出しの制限
#

class AccTest
  def pub
    puts "pus is a public method."
  end

  public  :pub        # pub メソッドをpublicに設定(指定しなくてもよい)
  
  def priv
    puts "priv is a private method."
  end

  private :priv
end

acc = AccTest.new
acc.pub           #=> pus is a public method
acc.priv          #=> エラー

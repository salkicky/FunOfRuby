#!/usr/bin/ruby
#encoding:shift_jis

class AccTest
  public

  def pub
    puts "pub is a public method."
  end

  private

  def priv
    puts "priv is a private method."
  end
end

acc = AccTest.new
acc.pub
acc.priv

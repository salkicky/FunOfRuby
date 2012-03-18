#!/usr/bin/ruby
#encoding:shift_jis

class HelloCount
  @@count = 0             # hello ���\�b�h�̌Ăяo����
  
  def self.count          # �Ăяo���񐔂��Q�Ƃ��邽�߂̃N���X���\�b�h
    @@count
  end

  def initialize(myname="Ruby")
    @name = myname
  end

  def hello
    @@count += 1          # �Ăяo���񐔂����Z����
    print "Hello, world. I am ", @name, ".\n"
  end
end

bob   = HelloCount.new("Bob")
alice = HelloCount.new("Alice")
ruby  = HelloCount.new

p HelloCount.count       #=> 0
bob.hello
alice.hello
ruby.hello
p HelloCount.count        #=> 3

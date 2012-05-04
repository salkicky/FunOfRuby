#encoding:shift_jis

module ClassMethods
  def cmethod
    puts "class method"
  end
end

module InstanceMethods
  def imethod
    puts "instance method"
  end
end

class MyClass
  # extend����ƃN���X���\�b�h��ǉ��ł���
  extend ClassMethods
  # include����ƃC���X�^���X���\�b�h��ǉ��ł���
  include InstanceMethods
end

MyClass.cmethod
MyClass.new.imethod

MyClass.imethod


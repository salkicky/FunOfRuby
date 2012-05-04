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
  # extendするとクラスメソッドを追加できる
  extend ClassMethods
  # includeするとインスタンスメソッドを追加できる
  include InstanceMethods
end

MyClass.cmethod
MyClass.new.imethod

MyClass.imethod


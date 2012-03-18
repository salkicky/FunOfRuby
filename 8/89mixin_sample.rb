#!/usr/bin/ruby
#encoding:shift_jis

module MyModule
  # 共通して提供したいメソッドなど
end

class MyClass1
  include MyModule
  # MyClass1に固有うのメソッドなど
end

class MyClass2
  include MyModule
  # MyClass2に固有うのメソッドなど
end


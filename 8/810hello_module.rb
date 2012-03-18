#!/usr/bin/ruby
#encoding:shift_jis
#
# モジュールを作る
#

module HelloModule          # module文
  Version = "1.0"            # 定数の定義
  def hello(name)           # メソッドの定義
    print "Hello, ", name, ".\n"
  end
  module_function :hello
end

p HelloModule::Version      #=> 1.0
HelloModule.hello("Alice")  #=> Hello, Alice.

include HelloModule         #=> インクルードする
p Version
hello("Alice")


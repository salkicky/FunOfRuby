#!/usr/bin/ruby
#encoding:shift_jis
#
# ���W���[�������
#

module HelloModule          # module��
  Version = "1.0"            # �萔�̒�`
  def hello(name)           # ���\�b�h�̒�`
    print "Hello, ", name, ".\n"
  end
  module_function :hello
end

p HelloModule::Version      #=> 1.0
HelloModule.hello("Alice")  #=> Hello, Alice.

include HelloModule         #=> �C���N���[�h����
p Version
hello("Alice")


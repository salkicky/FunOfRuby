#!/usr/bin/ruby
#encoding:shift_jis

module MyModule
  # ���ʂ��Ē񋟂��������\�b�h�Ȃ�
end

class MyClass1
  include MyModule
  # MyClass1�ɌŗL���̃��\�b�h�Ȃ�
end

class MyClass2
  include MyModule
  # MyClass2�ɌŗL���̃��\�b�h�Ȃ�
end


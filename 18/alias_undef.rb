# encoding:shift_jis

class C1        # C1�N���X�̒�`
  def hello     # hello���`
    "Hello"
  end
end

class C2 < C1   # C1�N���X���p������C2�N���X�̒�`
  alias old_hello hello   # �ʖ� old_hello���`

  def hello     # hello���Ē�`
    "#{old_hello}, again"
  end

end

obj = C2.new
p obj.old_hello
p obj.hello

class C2
  alias old2_hello hello

  def hello
    "new hello"
  end

  undef old_hello
end

p obj.hello
p obj.old2_hello

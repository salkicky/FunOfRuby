# encoding:shift_jis

class C1        # C1クラスの定義
  def hello     # helloを定義
    "Hello"
  end
end

class C2 < C1   # C1クラスを継承してC2クラスの定義
  alias old_hello hello   # 別名 old_helloを定義

  def hello     # helloを再定義
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

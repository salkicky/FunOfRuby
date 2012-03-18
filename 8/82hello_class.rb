# encoding : shift_jis
#

class HelloWorld              # Class文
  Version = "1.0"             # 定数の定義

  def initialize(myname="Ruby") # initializeメソッド
    @name = myname              # インスタンス変数の初期化
  end

  def hello
    print "Hello, world. I am ", @name, ".\n"
  end

  def name
    return @name
  end

  def name=(value)
    @name = value
  end
end

bob = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")
ruby = HelloWorld.new
bob.hello

bob.name = "Robert"
p bob.name
bob.hello

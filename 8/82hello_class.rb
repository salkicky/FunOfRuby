# encoding : shift_jis
#

class HelloWorld              # Class��
  Version = "1.0"             # �萔�̒�`

  def initialize(myname="Ruby") # initialize���\�b�h
    @name = myname              # �C���X�^���X�ϐ��̏�����
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

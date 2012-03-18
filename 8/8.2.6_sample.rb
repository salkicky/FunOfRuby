#!.usr.bin.ruby
# encoding : shift_jis

class HelloWorld
  def HelloWorld.hello(name)
    print name, " said hello\n"
  end
end

HelloWorld.hello("John")


class HelloWorld2
  def self.hello(name)
    print name, " said hello.\n"
  end
end

HelloWorld2.hello("hamada")


class HelloWorld3
  class << self
    def hello(name)
      print name, " said hello.\n"
    end
    
    def hello2(name)
      print name, " will be said \"Hello\"\n"
    end
  end
end

HelloWorld3.hello("Jim")
HelloWorld3.hello2("Tom")
HelloWorld3::hello("::use")



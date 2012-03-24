# encoding:shift_jis

#
# LOCAL VARIABLE
#

var = 1

class Foo
  var = 2

  def meth
    var = 3
    p var
  end

  p var
end

p var
Foo.new.meth

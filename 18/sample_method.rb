# endocing:shift_jis

class Foo
  def my_method
    p __method__
  end
end


f = Foo.new
f.my_method

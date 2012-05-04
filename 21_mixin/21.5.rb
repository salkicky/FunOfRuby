#encoding:shift_jis

module M
  def meth()
    puts "M#meth"
  end
end


class C
  include M
  def meth()
    puts "C#meth"
  end
end

c = C.new
c.meth

p C.ancestors


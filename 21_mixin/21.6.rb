#encoding:shift_jis

str = "たのしいRuby"

def str.edition(n)
  "#{self} 第#{n}版"
end

p str.edition(3)


class << str
  def edition(n)
    "#{self} 第#{n}版"
  end
end

p str.edition(3)


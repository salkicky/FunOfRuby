#encoding:shift_jis

str = "���̂���Ruby"

def str.edition(n)
  "#{self} ��#{n}��"
end

p str.edition(3)


class << str
  def edition(n)
    "#{self} ��#{n}��"
  end
end

p str.edition(3)


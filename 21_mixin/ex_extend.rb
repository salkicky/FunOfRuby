#encoding:shift_jis

module Edition
  def edition(n)
    "#{self} ��#{n}��"
  end
end

str = "�y����Ruby"
str.extend(Edition)

p str.edition(3)

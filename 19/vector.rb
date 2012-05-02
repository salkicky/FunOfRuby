# 19.6.1

class Vector
  attr_reader :x, :y

  def initialize(x=0, y=0)
    @x, @y = x, y
  end

  def inspect              # �\���p
    "(#{@x}, #{@y})"
  end

  def +(other)
    Vector.new(@x + other.x, @y + other.y)   # x,y�̂��ꂼ��𑫂�
  end

  def -(other)
    Vector.new(@x - other.x, @y - other.y)   # x,y�̂��ꂼ�������
  end
end

vec0 = Vector.new(3,6)
vec1 = Vector.new(1,8)

p vec0
p vec1
p vec0+vec1
p vec0-vec1
"(#{@x}, #{@y})"
end

def +(other)
  Vector.new(@x + other.x, @y + other.y)   # x,y�̂��ꂼ��𑫂�
end

def -(other)
  Vector.new(@x - other.x, @y + other.y)   # x,y�̂��ꂼ�������
end
end

vec0 = Vector.new(3,6)
vec1 = Vector.new(1,8)

p vec0
p vec1
p vec0+vec1
p vec0-vec1

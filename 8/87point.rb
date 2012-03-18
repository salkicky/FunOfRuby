#!/usr/bin/ruby
#encoding:shift_jis
#
# protected, private, public
#

class Point
  attr_accessor :x, :y      # �A�N�Z�X���\�b�h���`����

  protected :x=, :y=        # x=��y=��protected�ɂ���
  
  def initialize(x =0.0, y=0.0)
    @x, @y = x, y
  end

  def swap(other)           # x,y �̒l�����ւ��郁�\�b�h
    tmp_x, tmp_y = @x, @y
    @x, @y = other.x, other.y
    other.x, other.y = tmp_x, tmp_y   # ����N���X���ł͌Ăяo���\
    return self
  end
end

p0 = Point.new
p1 = Point.new(1.0, 2.0)
p [ p0.x, p0.y ]            #=> [0.0, 0.0]
p [ p1.y, p1.y ]            #=> [1.0, 2.0]

p0.swap(p1)
p [ p0.x, p0.y ]            #=> [1.0, 2.0]
p [ p1.x, p1.y ]            #=> [0.0, 0.0]

p0.x = 10.0                 #=> �G���[



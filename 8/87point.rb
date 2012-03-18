#!/usr/bin/ruby
#encoding:shift_jis
#
# protected, private, public
#

class Point
  attr_accessor :x, :y      # アクセスメソッドを定義する

  protected :x=, :y=        # x=とy=をprotectedにする
  
  def initialize(x =0.0, y=0.0)
    @x, @y = x, y
  end

  def swap(other)           # x,y の値を入れ替えるメソッド
    tmp_x, tmp_y = @x, @y
    @x, @y = other.x, other.y
    other.x, other.y = tmp_x, tmp_y   # 同一クラス内では呼び出し可能
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

p0.x = 10.0                 #=> エラー



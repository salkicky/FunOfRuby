#!/usr/bin/ruby
#encoding:shift_jis
#
# クラスを拡張する
#

class String
  def count_word
    ary = self.split(/\s+/)     # 自分自身を空白文字で分解する
    return ary.size             # 分解後の配列の要素を返す
  end
end

str = "Just Another Ruby Newbie"
p str.count_word          #=>4

#!/usr/bin/ruby
#encoding:shift_jis
#
# 継承
#

class RingArray < Array           # スーパークラスを指定する
  def [](i)                       # 演算子[]の再定義
    idx = i % size                # 新しいインデックスを求める
    super(idx)                    # スーパークラスの同名のメソッドを呼ぶ
  end
end

eto = RingArray[ "1", "2", "3"]

p eto[0]
p eto[1]
p eto[2]
p eto[3]
p eto[4]

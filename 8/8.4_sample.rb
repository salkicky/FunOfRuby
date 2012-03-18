#!/usr/bin/ruby
#encoding:shift_jis

# ファイルの存在を調べる
p FileTest.exist?("ruby")
p FileTest.exist?(".\\8.4_sample.rb")
# ファイルサイズ
p FileTest.size(".\\8.4_sample.rb")

# 円周率
p Math::PI
# 2の平方根
p Math.sqrt(2)

include Math
p PI
p sqrt(2)

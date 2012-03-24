# encoding:shift_jis

# クラスの定義
class Foo
  def initialize
    puts "foo!"
  end
end


# サンプルコード
# ※他のファイルにライブラリとして取り込まれた場合は実行されない
# ※自分自身が指定された場合だけ実行
if __FILE__ == $0
  Foo.new
end


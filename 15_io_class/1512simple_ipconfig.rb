#encoding: shift_jis
#
# ipconfigの出力結果から、指定パターンを抜き出して出力する
#  第一引数：正規表現
#  第二引数：ファイル名（.txtなら実行する）

pattern = Regexp.new(ARGV[0])
filename = ARGV[1]
if /.txt$/ =~ filename
  file = open("|ipconfig")
end

puts "pattern = #{pattern}"

while text = file.gets do
  if pattern =~ text
    print "#{file.lineno}:#{text}"
  end
end

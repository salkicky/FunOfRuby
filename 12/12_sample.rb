# encoding:shift_jis

moji = "文字列"

desc = %Q{Rubyの文字列には「''」も「""」も\n使われます。}
str = %q{Ruby said, \n'Hello world!'}
puts desc
puts str

str = %q|aaaa|
puts str

# ヒアドキュメント

10.times do |i|
  10.times do |j|
    print(<<-"EOB")
    i: #{i}
    j: #{j}
    i*j = #{i*j}
    EOB
  end
end

str = <<-EOB
Hello!
Hello!
Hello!
EOB
puts str

# 12.2 文字列の長さを得る

p "just another ruby hacker,".length
p "just another ruby hacker,".size
str = 'オブジェクト指向プログラミング言語'
p str.bytesize


str = "abcdef"
p str[0]
p str[0].chr 
p str[1]
p str[1].ord

p str.chop
p str
p str.chop!
p str

str << "\n"
p str
p str.chomp
p str
p str.chomp!
p str
p str.chomp!
p str

str = "sumomomomomomomomomomouchi"
p str.index("momo")
p str.rindex("momo")
p str.include?("ou")

str[str.index("momomomomomo")] = "ss"
p str

str = "Hello, Ruby."
p str.slice!(-1)
p str

# 12.9.2

# each_lineメソッドで取り出した行をcollectメソッドで処理する
str = "あ\nい\nう\n"
p str
tmp = str.each_line.collect do |line|
  line.chomp * 3
end
p tmp
#each_byteメソッドで取り出した数値をcollectメソッドで処理する
str = "abcde"
tmp = str.each_byte.collect do |byte|
  -byte
end
p tmp
# each_charメソッドで取り出した数値をcollectメソッドで処理する
tmp = str.each_char.collect do |c|
  c * 2
end
p tmp
p str.concat("aaa")
p str
p str.delete("aaa")
p str
p str.delete!("aaa")
p str
p str.reverse!
p " aa  bb  cc  dd  ".strip 
p str.upcase!.reverse!
p str.capitalize!
p str.swapcase!

str = "abcdefg"
p str.tr!("b", "B")
p str.tr!("b-e", "B-E")

require "nkf"
euc_str = "日本語EUCの文字列です"
utf8_str = NKF.nkf("-w -xm0", euc_str)
p utf8_str.encoding
sjis_str = utf8_str.encode("shift_jis")
p sjis_str.encoding
sjis_str.encode!("utf-8")
p sjis_str.encoding
sjis_str.encode!("shift_jis")

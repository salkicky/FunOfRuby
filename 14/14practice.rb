#encoding:shift_jis

puts "====== (1) ========"

# 電子メールの解析 hamakou@t.vodafone.ne.jp

mail = "hamakou@t.vodafone.ne.jp"
re = %r|(.+)@(.+)|
re =~ mail
puts mail
print " local part: #{$1}\n"
print " domain    : #{$2}\n"


puts "====== (2) ========"

str = "オブジェクト指向は難しい！なんて難しいんだ！"
p str.gsub!(/難しい/,"簡単だ")
p str.gsub!(/だんだ/,"なんだ")
p str


puts "====== (3) ========"

str1 = "in-reply-to"   # => "In-Reply-To"
str2 = "X-MAILER"      # => "X-Mailer"

# ・正規表現を/[A-Z]*/iにすると、"in", "", "reply", "", "to"がブロックに渡る
# ・正規表現のオプションiは空白と改行の無視
# ・#{}は正規表現でも有効
def word_capitalize(word)
  wc = ""
  word.scan(/[A-Z]+/i) do |w|
    w2 = w.capitalize
    word.sub!(/#{w}/, w2)
  end
  word
end

p str1
p word_capitalize(str1)
p str2
p word_capitalize(str2)



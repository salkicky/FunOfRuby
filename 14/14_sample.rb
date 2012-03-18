# encoding:shift_jis

re = Regexp.new("Ruby")
p "aaRubyaaaa".index(re)

re2 = %r(Ruby)
p "aaaaaRubyssssRs".index(re2)

###### 14.2 #######

p "aaaRubyaaaaa" =~ %r(ddd)
p "aaaRubyaaaaa" =~ re2

p "ABC" =~ /^ABC$/
p "ABCsss" =~ /^ABC/
p "sssABC" =~ /^ABC/
p "sssABC" =~ /ABC$/         # => 3
p "sss\nABC" =~ /^ABC$/      # => 4

str = "ABCafasdfo1212"

p str =~ /[ABC]/
p str =~ /a[fas]d/
p str =~ /[^ABC].sd/
p str =~ /a..s/

str2 = "aa  fafa\nfadsf\nfads"
p str2.split(/\s+/)
p str2 =~ /\Afa/


#### 14.3 #######
re1 = Regexp.new("abc*def")
re2 = Regexp.new(Regexp.quote("abc*def"))
p (re1 =~ "abc*def")    # => nil
p (re2 =~ "abc*def")    # => 0

#### 14.4 #######
str = "ABC\nDEF\nGHI"
p /DEF.GHI/ =~ str
p /DEF.GHI/m =~ str

#### 14.5 #######

/(.)(.)(.)/ =~ "abc"
first = $1           # 最初の(.)にマッチング
second = $2          # ２番目の(.)にマッチング
third = $3           # ３番目の(.)にマッチング
p first
p second
p third
p $4

/(.)(\d\d)+(.)/ =~ "123456"
p $1                 # (.)     => 1
p $2                 # (\d\d)+ => 45
p $3                 # (.)     => 6

/(.)(?:\d\d)+(.)/ =~ "123456"
p $1                 # 1
p $2                 # 6

/C./ =~ "ABCDEFG"
p $`     # C. の前  => AB
p $&     # C.       => CD
p $'     # C. の後  => EFG

##### 14.6 #######

# sub,gsub
str = "abc   def  g    hi"
p str.sub(/\s+/, ' ')     # 最初にマッチした場所だけを置換
p str.gsub(/\s+/, ' ')    # マッチした全ての場所を置換

str = "abracatabra"
nstr = str.sub(/.a/) do |matched|
  '<' + matched.upcase + '>'
end
p nstr      # => ab<RA>catabra

nstr = str.gsub(/.a/) do |matched|
  '<' + matched.upcase + '>'
end
p nstr      # => ab<RA><CA><TA>b<RA>

# scan1
str.scan(/.a/) do |matched|
  p matched
end

# scan2
str.scan(/(.)(a)/) do |matched|
  p matched
end

str.scan(/(.)(a)/) do |a, b|
  p a + "-" + b
end

p str.scan(/.a/)

##### 14.7 ###########

re = %r|http://([^/]*)/|
str = "http://www.ruby-lang.org/ja/"
re =~ str
print "server address:", $1, "\n"



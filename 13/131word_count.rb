# encoding:shift_jis

# 単語数のカウント

count = Hash.new(0)

## 単語の集計
while line = gets
  words = line.split
  words.each do |word|
    count[word] += 1
  end
end

## 結果の出力
count.sort{|a,b|
  # < マイナス    = 0     > プラス
  a[1] <=> b[1]
}.each do |key, value|
  print "#{key}: #{value}\n"
end


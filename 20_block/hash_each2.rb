#encoding:shift_jis

sum = 0
outcom = {"参加費"=>1000,"ストラップ代"=>1000, "懇親会費"=>4000}
outcom.each do |pair|
  sum += pair[1]    # 金額を指定
end
print "合計: ", sum, "\n"

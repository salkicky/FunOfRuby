#encoding:shift_jis

sum = 0
outcome = {"�Q����"=>1000, "�X�g���b�v��"=>1000, "���e���"=>4000}
outcome.each do |item, price|
  sum += price
end
print "���v: ", sum, "\n"

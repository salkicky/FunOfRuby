#encoding:shift_jis

sum = 0
outcom = {"�Q����"=>1000,"�X�g���b�v��"=>1000, "���e���"=>4000}
outcom.each do |pair|
  sum += pair[1]    # ���z���w��
end
print "���v: ", sum, "\n"

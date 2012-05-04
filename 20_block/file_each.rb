#encoding:shift_jis

f = File.open("sample.txt")
f.each_line do |line|
  print line
end
f.close

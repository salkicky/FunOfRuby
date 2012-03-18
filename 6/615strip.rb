# encoding : shift_jis

file = open(ARGV[0])
while text = file.gets
  next if /^\s*$/ =~ text     # 空白行なら
  next if /^#/ =~ text        # シャープで始まる行なら
  print text
end


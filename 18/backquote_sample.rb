# encoding:shift_jis

dirlist = `dir`.split("\n")

dirlist.each do |line|
  if line =~ /.rb$/i
    puts line
  end
end

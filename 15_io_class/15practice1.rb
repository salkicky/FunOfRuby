# encoding: shift_jis

puts "##### (1) #######"

filename = ARGV[0]

if /.txt$/ =~ filename
  lc = 0      # line counter
  wc = 0      # word counter
  cc = 0      # char counter

  open(filename) do |io|
    while line = io.gets
      p line
      lc += 1

      if line.chomp! != ""        # 改行文字の削除
        words = line.split(/\s+/)
        wc += words.size

        words.each do |word|
          cc += word.size
        end
      end
    end
  end

  print "file   : #{filename}\n"
  print "line   : #{lc}\n"
  print "word   : #{wc}\n"
  print "char   : #{cc}\n"
else
  print "#{filename} is not textfile.\n"
  exit
end


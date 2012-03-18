# encoding:shift_jis

# lc: 　ファイル末尾から数えた出力行数
# filename: 処理対象ファイル名
def tail(lc, filename)
  puts "target : #{lc}"
  puts "file   : #{filename}"
  
  begin
    io = open(filename)
    lines = io.readlines

    if (lines.size >= lc)
      i = lines.size - lc - 1
      lines.slice!(0..i)
    end

    puts "=== start ======"
    puts lines
    puts "=== end ======"
  ensure
    io.close
    puts "Closede? #{io.closed?}"
  end
end

tail(ARGV[0].to_i, ARGV[1])


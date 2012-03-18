# encoding:shift_jis

# lc: �@�t�@�C���������琔�����o�͍s��
# filename: �����Ώۃt�@�C����
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


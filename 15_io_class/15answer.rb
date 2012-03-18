#encoding: shift_jis

puts "===== (1) ======"

def wc(file)
  nline = nword = nchar = 0
  File.open(file) do |io|
    io.each do |line|
      words = line.split(/\s+/).reject{|w| w.empty?}
      nline += 1
      nword += words.size
      nchar += line.length
    end
  end
  puts "line=#{nline}, words=#{nword}, chars=#{nchar}"  
end

wc(__FILE__)


puts "====== (2) ======"

def reverse1(input)
  open(input, "r+") do |f|
    lines = f.readlines
    f.rewind
    f.truncate(0)
    f.write lines.reverse.join()
  end
end

def reverse2(input)
  open(input, "r+") do |f|
    lines = f.readlines
    f.rewind
    f.truncate(0)
    f.write lines[0]
  end
end

def reverse3(input)
  open(input, "r+") do |f|
    lines = f.readlines
    f.rewind
    f.truncate(0)
    f.write lines.reverse[0]
  end
end

puts "====== (3) ======="

def tail(lines, file)
  queue = Array.new
  open(file) do |io|
    while line = io.gets
      queue.push(line)
      if queue.size > lines
        queue.shift
      end
    end
  end
  queue.each{|line| print line}
end

puts "==="
tail(10,__FILE__)

puts "==="
tail(3,__FILE__)

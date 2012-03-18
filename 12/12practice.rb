# encoding:shift_jis

puts "===== (1) ====="

str = %Q(Ruby is an object oriented programing language)
words = str.split(/ /)
p words

puts "===== (2) ====="

p words.sort!()

puts "===== (3) ====="



puts "===== (4) ====="

str2 = ""
str.split(/ /).each do |w|
  str2 += w.capitalize + " "
end
p str2.strip!


puts "===== (5) ====="


puts "===== (6) ====="

kansuu = %q(五千三百五十)

def kan2num(kan)
  numtbl = %q(零一二三四五六七八九)
  ketatbl = %q(千百十)

  p kan

  sum = 0
  k = 1000

  ketatbl.each_char do |keta|
    case kan.index(keta)
    when 0
      kan.slice!(0)
      sum += k
    when 1
      sum += k * numtbl.index(kan.slice!(0))
      kan.slice!(0)
    end
    k /= 10
  end
 
  if (n = kan.slice!(0))
    sum+= numtbl.index(n)
  end
  sum
end

p kan2num("百")
p kan2num("一")
p kan2num("四百七")
p kan2num("二千八十三")


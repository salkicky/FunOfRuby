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

kansuu = %q(�ܐ�O�S�܏\)

def kan2num(kan)
  numtbl = %q(����O�l�ܘZ������)
  ketatbl = %q(��S�\)

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

p kan2num("�S")
p kan2num("��")
p kan2num("�l�S��")
p kan2num("��甪�\�O")


# encoding:shift_jis

puts "==== (1) ====="

wday = {
  "sunday"   => "���j��",
  "monday"   => "���j��",
  "tusday"   => "�Ηj��",
  "wensday"  => "���j��",
  "thursday" => "�ؗj��",
  "friday"   => "���j��",
  "saturday" => "�y�j��",
}

p wday

puts "===== (2) ======"

p wday.size


puts "===== (3) ======"

wday.each do |key,value|
  print "�u#{key}�v��#{value}�̂��Ƃł��B\n"
end


puts "===== (4) ======"

def str2hash(str)
  h = Hash.new(nil)
  
  list = str.split(/\s+/)
  while list != []
    key = list.shift
    value = list.shift
    h[key] = value
  end
  h
end

p str = "bule �� white ��\nred ��"
p str2hash(str)

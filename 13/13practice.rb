# encoding:shift_jis

puts "==== (1) ====="

wday = {
  "sunday"   => "日曜日",
  "monday"   => "月曜日",
  "tusday"   => "火曜日",
  "wensday"  => "水曜日",
  "thursday" => "木曜日",
  "friday"   => "金曜日",
  "saturday" => "土曜日",
}

p wday

puts "===== (2) ======"

p wday.size


puts "===== (3) ======"

wday.each do |key,value|
  print "「#{key}」は#{value}のことです。\n"
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

p str = "bule 青 white 白\nred 赤"
p str2hash(str)

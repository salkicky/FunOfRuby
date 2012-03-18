# encoding:shift_jis

## 1 ##
require "time"
require "date"

def jparsedate(str)
 str.gsub!(/��/, " ")
 str.gsub!(/[�N��]/,"/")

 str.gsub!(/�b/,"")
 str.gsub!(/[����]/, ":")
 str.gsub!(/�ߑO/,"")

 if /�ߌ�([0-9]+):/ =~ str
   hour = $1.to_i + 12
   str.sub!(/�ߌ�[0-9]+/, hour.to_s)
 end

 Time.parse(str)
end


## 2 ##
def ls_t(dir)
  namelist = {}

  Dir.open(dir) do |dir|
    Dir.chdir(dir)
    dir.each{|name| namelist[name] = File.ctime(name)}
  end

  namelist.sort{|a,b| a[1] - b[1]}.each do |name, d|
    print "#{d}    #{name}\n"
  end
end

## 3 ##
def make_calender()
  td = Date.today
  first = Date.new(td.year, td.month, 1)
  last  = Date.new(td.year, td.month, -1)

  # Header
  print "      #{first.strftime("%m %Y")}\n"
  print " Su Mo Tu We Th Fr Sa\n"

  # padding by " "
  first.wday.times{ print "   " }

  # days
  (1..last.day).each do |day|
    printf " %2d",day
    print "\n" if (first.wday + day) % 7 == 0
  end

end




#################
puts "===== (1) ====="
s_date = "2009�N12��23���ߌ�8��17��50�b"
puts s_date
puts jparsedate(s_date)

puts "==== (2) ======"
ls_t(ARGV[0])

puts "==== (3) ======"
make_calender

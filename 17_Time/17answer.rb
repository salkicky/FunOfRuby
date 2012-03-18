# encoding:shift_jis

## 1 ##

## 2 ##
def ls_t(path)
  entries = Dir.entries(path)
  entries.reject!{|name| /^\./ =~ name}

  mtimes = Hash.new
  entries = entries.sort_by do |name|
    mtimes[name] = File.mtime(File.join(path, name))
  end

  entries.each do |name|
    printf "%-40s %s\n", name, mtimes[name]
  end
rescue => ex
  pus ex.message
end

ls_t(ARGV[0])

## 3 ##
require "date"

module Calender
  WEEK_TABLE = []

  module_function

  def cal(year, month)
    first = Date.new(year, month, 1)
    end_of_month = ((first >> 1) - 1).day
    start = 6 - first.wday

    puts first.strftime("%B %Y").center(21)
    puts " Su Mo Tu We Th Fr St"
    WEEK_TABLE.each do |week|
      buf = ""
      week[start, 7].each do |day|
        if day > end_of_month
          buf << "   "
        else
          buf << sprintf("%3d", day)
        end
      end
      puts buf
    end
  end
end


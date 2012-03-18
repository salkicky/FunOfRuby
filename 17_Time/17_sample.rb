# encoding: shift_jis

## 17.1 ######
p Time.new
p Time.now

## 17.2 ######
t = Time.now
p t.year
p t.month
p t.day
p t.hour
p t.min
p t.sec
p t.zone.encode("shift_jis")

t = Time.mktime(2009, 3, 14, 22, 34, 10)
p t

## 17.3 ######
t1 = Time.now
puts "wait 1seconds"
sleep(1)
t2 = Time.now
p t1 < t2
p t2 - t1

## 17.4 ######
p t1.strftime("%a %b %d")
p t1.to_s

require "time"
p t1.rfc2822
p t1.iso8601

## 17.5 ######
t = Time.now
p t
p t.utc
p t.localtime

## 17.6 #####
p Time.parse("2001/10/3 22:30:2")

## 17.7 #####
# DateTime

require "date"
# 現在時刻を取得する
t = DateTime.now
p t.year
p t.month
p t.day
p t.hour
p t.min
p t.sec
p t.wday
p t.mday
p t.yday
p t.zone
# フォーマット出力する
p t.strftime("%a")
p t.to_s

# 文字列を解析してDateTimeオブジェクトを得る
puts DateTime.parse("2001/4/5 6:44:6")

# to_time
d = DateTime.now
p d.to_time

## 17.8 #####
t1 = DateTime.now
sleep(1)
t2 = DateTime.now
p t2 - t1
p t2
p t2 + 10
p DateTime.now + 10

t = DateTime.now
puts t
p t.offset

d = Date.today
p d
puts d

d = Date.new 2011,10,-1
puts d
puts d + 2
puts d
puts d >> 2
puts d << 2



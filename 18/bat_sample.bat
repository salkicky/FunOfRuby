echo OFF

echo "#!...ruby"の行から"__END__"の行までをrubyで実行。
ruby -x bat_sample.bat

goto:END

#! ruby
#! encoding:shift_jis
# ↑encoding...がないと、"invalid multibyte char (US-ASCII)"と言われる。
puts "これはRubyで出力"
__END__

puts "ここは__END__の後なので、実行されない。"

:END

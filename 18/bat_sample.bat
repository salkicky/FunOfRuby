echo OFF

echo "#!...ruby"�̍s����"__END__"�̍s�܂ł�ruby�Ŏ��s�B
ruby -x bat_sample.bat

goto:END

#! ruby
#! encoding:shift_jis
# ��encoding...���Ȃ��ƁA"invalid multibyte char (US-ASCII)"�ƌ�����B
puts "�����Ruby�ŏo��"
__END__

puts "������__END__�̌�Ȃ̂ŁA���s����Ȃ��B"

:END

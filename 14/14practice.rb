#encoding:shift_jis

puts "====== (1) ========"

# �d�q���[���̉�� hamakou@t.vodafone.ne.jp

mail = "hamakou@t.vodafone.ne.jp"
re = %r|(.+)@(.+)|
re =~ mail
puts mail
print " local part: #{$1}\n"
print " domain    : #{$2}\n"


puts "====== (2) ========"

str = "�I�u�W�F�N�g�w���͓���I�Ȃ�ē���񂾁I"
p str.gsub!(/���/,"�ȒP��")
p str.gsub!(/����/,"�Ȃ�")
p str


puts "====== (3) ========"

str1 = "in-reply-to"   # => "In-Reply-To"
str2 = "X-MAILER"      # => "X-Mailer"

# �E���K�\����/[A-Z]*/i�ɂ���ƁA"in", "", "reply", "", "to"���u���b�N�ɓn��
# �E���K�\���̃I�v�V����i�͋󔒂Ɖ��s�̖���
# �E#{}�͐��K�\���ł��L��
def word_capitalize(word)
  wc = ""
  word.scan(/[A-Z]+/i) do |w|
    w2 = w.capitalize
    word.sub!(/#{w}/, w2)
  end
  word
end

p str1
p word_capitalize(str1)
p str2
p word_capitalize(str2)



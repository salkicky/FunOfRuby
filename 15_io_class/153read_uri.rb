# encoding: shift_jis

require "open-uri"

# HTTP�o�R�Ńf�[�^��ǂݍ���
open("http://www.ruby-lang.org") do |io|
  puts io.read           # Ruby�̃z�[���y�[�W���R���\�[���ɏo�͂���
end

# FTP�o�R�Ńf�[�^��ǂݍ���
open("ftp://www.ruby-lang.org/pub/ruby/1.8/ruby-1.8.7.tar.gz") do |io|
  open("ruby-1.8.7.tar.gz", "w") do |f|    # ���[�J���t�@�C�����J��
    f.write(io.read)
  end
end


#! /usr/bin/ruby
#encoding: shift_jis

def pb(i)
  # printf �� %b �t�H�[�}�b�g���g���āA
  # �����̖���8�r�b�g��2�i���\������
  printf("%08b\n", i & 0b11111111)
end

b = 0b11110000
pb(b)
pb(~b)
pb(b & 0b00010001)
pb(b | 0b00010001)
pb(b ^ 0b00010001)
pb(b >> 3)
pb(b << 3)

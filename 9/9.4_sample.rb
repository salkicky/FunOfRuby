#!/usr/bin/ruby
#encoding:shift_jis

def copy(from, to)
  src = open(from)
  begin
    dst = open(to, "w")     # �t�@�C��from���J����to�ɃR�s�[����
    data = src.read
    dst.write(data)
    dst.close
  ensure
    src.close
  end
end

copy("91w", "aa")

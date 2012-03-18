#!/usr/bin/ruby
#encoding:shift_jis

def copy(from, to)
  src = open(from)
  begin
    dst = open(to, "w")     # ファイルfromを開いてtoにコピーする
    data = src.read
    dst.write(data)
    dst.close
  ensure
    src.close
  end
end

copy("91w", "aa")

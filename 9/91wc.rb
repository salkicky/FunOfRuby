#!/usr/bin/ruby
#encoding: shift_jis

ltotal = 0
wtotal = 0
ctotal = 0
ARGV.each do |file|
  begin
    input = open(file)
    l = 0
    w = 0
    c = 0
    while line = input.gets
      l += 1
      c += line.size
      line.sub!(/^\s+/, "")       # 行頭の空白を除去
      ary = line.split(/\s+/)     # 空白文字で分解する
      w += ary.size
    end
    input.close
    printf("%8d %8d %8d %s \n",l,w,c,file)  # 出力を整形する
    ltotal += l
    wtotal += w
    ctotal += c
  rescue => ex
    print ex.message, "\n"    # 例外のメッセージを出力
  end
end

printf("%8d %8d %8d %s \n",  ltotal, wtotal, ctotal, "total")

#!/usr/bin/ruby
#encoding:shift_jis
#

def fetch_and_downcase(ary, index)
  if str = ary[index]
    return str.downcase
  end
end

ary = ["Boo", "Foo"]
p fetch_and_downcase(ary, 1)          #=> "foo"

hash = {0=>"Boo", 1=>"Foo"}
p fetch_and_downcase(hash, 1)         #=> "foo"

p fetch_and_downcase(hash, 2)

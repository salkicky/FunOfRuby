# encoding:shift_jis

person = Hash.new
person['tanaka'] = "�c����Y"
person['satou'] = "�������Y"
person['kimura'] = "�ؑ��O�Y"
p person['satou']

# 13.2

h1 = { "a" => "b", "c" => "d" }
p h1["a"]

# �V���{���ɂ��o�^�@Ruby1.9����
h2 = {a:"b", c:"d"}
p h2
p h2[:a]

h3 = h2
p h3
h2[:a] = 4
p h2
p h3

# �n�b�V���̐V�K�쐬
h1 = Hash.new
h2 = Hash.new("")
p h1[:a]
p h2[:a]

### 13.3 �l�����o���E�ݒ肷�� ###

h = Hash.new
h["R"] = "Ruby"
p h["R"]

h = Hash.new
h.store("R", "Ruby")
p h.fetch("R")
# p h.fetch("s")     # => IndexError
p h.fetch("s", "undef")    # => "undef"
p h.fetch("s"){ String.new("aaa") }

p h
h[:b] = "bbb"
h.each do |key,value|
  print key,  "======" , value, "\n"
end
h.each_key do |key|
  puts key
end
h.each_value do |value|
  puts value
end
h.each do |item|
  p item.size
  print item[0], "=", item[1], "\n"
end

p h.keys
p h.values
p h.to_a

# �n�b�V���̃f�t�H���g�l
h = Hash.new{ |hash, key| 
  # ����`�L�[�����������ɌĂяo�����
  hash[key] = key.upcase
}
h[:a] = "aaa"
p h[:a]
p h["x"]
p h["x"]

##### 13.4 #########
h = {a:"b", c:"d"}

# key?
p h.key?(:a)
p h.has_key?(:a)
p h.include?(:z)
p h.member?(:z)

# value?
p h.value?("b")
p h.has_value?("b")

##### 13.5 #########
# length
p h.length
p h.size

# empty
p h.empty?
h2 = Hash.new
p h2.empty?

##### 13.6 ##########

# delete
p h
p h.delete(:a)
p h
p h.delete(:a) {|key| "no #{key}."}

# delete_if

h[:a] = "b"
p h
p h.delete_if{|key,value| key == :c}
p h
p h.reject!{|key,value| key == :c}

##### 13.7 ##########
h.clear
p h.size

table = {A:{a:"x", b:"y"}, B:{a:"v", b:"w"}}
p table
p table[:A]
p table[:A][:a]
p table[:B][:a]
p table["B".intern]

# encoding: Shift_JIS

name = ["����", "��", "����", "�X��"]
name.each do |name|
  if /��/ =~ name
    puts name
  end
end


#encoding:shift_jis

require './book'
require './booklist'

# �{�̃��X�g�����B�ŏ��̓��X�g�͋�ɂȂ�
booklist = BookList.new

# ���X�g�ɑ}���������{��p�ӂ���
b1 = Book.new("���߂āA�{�i�炵��", "�镽��")
b2 = Book.new("Neo Aqua III", "Neo Aqua")

# ���X�g�ɖ{��ǉ�����
booklist.add(b1)
booklist.add(b2)
booklist.add(Book.new("�O���b�O�^�C�g���P", "�O���b�O"))
booklist.add(Book.new("�O���b�O�^�C�g���Q", "�O���b�O"))

# ���X�g�̖{���o�͂���
print booklist[0].title, "\n"
print booklist[1].title, "\n"

# �e�{�����o��
booklist.each do |book|
  puts book.author
end

# �^�C�g�������o��
booklist.each_title do |title|
  puts title
end

## �^�C�g���A���Җ������o��
booklist.each_title_author do |title, author|
  print "[", title, "] ", author, "\n"
end

# ���Җ�������o��
# author_regexp = /�O���b�O/
# booklist.each do |book|
  # if author_regexp ~= book.author
    # print book.title, "\n"
  # end
# end

booklist.find_by_author(/�O���b�O/) do |book|
  print book.title, "\n"
end

puts "--------------find_by_author()"
books = booklist.find_by_author(/�O���b�O/)
books.each do |book|
  print book.title, "\n"
end


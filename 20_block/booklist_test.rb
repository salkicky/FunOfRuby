#encoding:shift_jis

require './book'
require './booklist'

# 本のリストを作る。最初はリストは空になる
booklist = BookList.new

# リストに挿入したい本を用意する
b1 = Book.new("せめて、本格らしく", "城平京")
b2 = Book.new("Neo Aqua III", "Neo Aqua")

# リストに本を追加する
booklist.add(b1)
booklist.add(b2)
booklist.add(Book.new("グレッグタイトル１", "グレッグ"))
booklist.add(Book.new("グレッグタイトル２", "グレッグ"))

# リストの本を出力する
print booklist[0].title, "\n"
print booklist[1].title, "\n"

# 各本を取り出す
booklist.each do |book|
  puts book.author
end

# タイトルを取り出す
booklist.each_title do |title|
  puts title
end

## タイトル、著者名を取り出し
booklist.each_title_author do |title, author|
  print "[", title, "] ", author, "\n"
end

# 著者名から取り出す
# author_regexp = /グレッグ/
# booklist.each do |book|
  # if author_regexp ~= book.author
    # print book.title, "\n"
  # end
# end

booklist.find_by_author(/グレッグ/) do |book|
  print book.title, "\n"
end

puts "--------------find_by_author()"
books = booklist.find_by_author(/グレッグ/)
books.each do |book|
  print book.title, "\n"
end


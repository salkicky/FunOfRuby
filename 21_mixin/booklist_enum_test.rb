#encoding:shift_jis

require './booklist_enum'

booklist = BookList.new

booklist.add(Book.new("Software", "Rucker", "SF"))
booklist.add(Book.new("BABEL-17", "Delany", "SF"))
booklist.add(Book.new("Programing Perl", "Wall", "Computer"))
booklist.add(Book.new("Programing Pearls", "Bentley", "Computer"))

titles = booklist.collect do |book|
  book.title
end
p titles

p Book.ancestors
p BookList.ancestors

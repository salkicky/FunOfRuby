#encoding:shift_jis

class Book
  include Comparable

  def <=>(other)
    t = @genre.to_s <=> other.genre.to_s   # �W���������r����
    return t if t != 0                      # �Ⴄ�W�������Ȃ炻�̂܂ܕԂ�
    return @title <=> other.title           # �^�C�g�����r�������ʂ�Ԃ�
  end

  attr_accessor :title, :author, :genre

  def initialize(title, author, genre=nil)
    @title = title
    @author = author
    @genre = genre
  end
end



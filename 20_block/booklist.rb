#encoding:shift_jis

require './book'

class BookList
  ## ������
  def initialize()
    @booklist = Array.new
  end

  ## �V�����{��������
  def add(book)
    @booklist.push(book)
  end

  ## �{�̍�����Ԃ�
  def length
    @booklist.length
  end

  ## n�ԖڂɊi�[����Ă���{��ʂ̖{�ɂ���
  def []=(n,book)
    @booklist[n] = book
  end

  ## n�ԖڂɊi�[����Ă���{��Ԃ�
  def [](n)
    @booklist[n]
  end

  ## �{�����X�g����폜����
  def delete(book)
    @booklist.delete(book)
  end

  ## �{�����o�� 20.6.2
  def each
    @booklist.each do |book|
      yield book
    end
  end

  ## �^�C�g�����o��
  def each_title
    @booklist.each do |book|
      yield book.title
    end
  end

  ## �^�C�g���A���Җ������o��
  def each_title_author
    @booklist.each do |book|
      yield book.title, book.author
    end
  end

  ## �������u���b�N�Ăяo��
  def find_by_author(author)
    if block_given?
      @booklist.each do |book|
        if author =~ book.author
          yield book
        end
      end
    else # �u���b�N���Ȃ��ꍇ
      @booklist.select do |book|
        author =~ book.author
      end
    end
  end

end



# File: visibility-1.rb
#
class Book
  attr_accessor :title

  def initialize(title)
    @title = title
  end
end

class BookStore
  def initialize
    @books = []
  end

  def add(book)
    @books << book
  end

  def print
    @books.each_with_index do |book, index|
      puts "(#{index + 1}) #{book.title}"
    end
  end
end

bookstore = BookStore.new
bookstore.add(Book.new('Of Mice and Men'))
bookstore.print




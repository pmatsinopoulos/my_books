# File: app/controllers/books_controller.rb
#
class BooksController < ApplicationController
  before_action :find_book, only: [:edit, :update, :show, :destroy]

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to edit_book_url(@book)
    else
      render :new
    end
  end

  def update
    if @book.update(book_params)
      redirect_to edit_book_url(@book)
    else
      render :edit
    end
  end

  def index
    @books = Book.all.sort({title: 1})
  end

  def destroy
    @book.destroy
    redirect_to books_url
  end

  private

  def find_book
    @book = Book.find(params[:id])
  end

  def book_params
    result = params.require(:book).permit(:title, :author, :tags_joined, :publisher_id)
    tags_joined = result.delete(:tags_joined)
    result.merge({ tags: tags_joined })
  end
end

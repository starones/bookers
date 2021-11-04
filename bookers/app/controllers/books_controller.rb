class BooksController < ApplicationController
  def index
    @book = Book.new
  end

  def show
  end

  def new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path
  end

  def edit
  end

  private
  def book_params
    params.require(:blog).permit(:title, :body)
  end
end

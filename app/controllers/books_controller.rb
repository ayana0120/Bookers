class BooksController < ApplicationController
  def top
  end

  def new
    @book = Book.new
  end

  def index
    @books = Book.all
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to"/books"
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    list = Book.find(params_[:id])
    list.update(book_params)
    redirect_to book_path(list.id)
  end

  private
    def book_params
      params.require(:book).permit(:title, :body)
    end
  end
class BooksController < ApplicationController
  def top
  end

  def index
    @books = Book.all
  end

  def new
    book = Book.new
  end

  def create
    @books = Book.new(list_params)
  end

  def show
  end

  def edit
  end
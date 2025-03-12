class BooksController < ApplicationController
 def new
  @book = Book.new
 end

 def create
  book = book.new(book_params)
  book.save
  redirect_to '/index'
 end

 def index
  @books = Book.all
 end

 def show
 end

 def edit
 end

 private
 def book_params
  params.require(:book).permit(:title, :body)
 end
end
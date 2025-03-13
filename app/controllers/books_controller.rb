class BooksController < ApplicationController

 def index
  @books = Book.all
 end

 def create
  book = Book.new
  if book.save
    redirect_to book_path(book.id)
  else
    render :index
  end
 end

 def show
  @book = Book.find(params[:id])
 end

 def edit
  @book = Book.find(params[:id])
 end

 def update
  book = Book.find(params[:id])
  book.update(book_params)
  redirect_to book_path(book.id)
 end

end
class BooksController < ApplicationController
  def new
  end

  def show
    #user = User.first
   #@books = books.first(:id)
    #@books = current_user.books.build(books_params)

    @user = User.find(params[:id])
    @books = user.books.find(params[:id])


  end
end

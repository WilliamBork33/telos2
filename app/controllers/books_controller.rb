class BooksController < ApplicationController
  
  def index
    #@user = User.find(params[:id])
    @user = User.first
    
  end

  def show
    #@user = User.find(params[:id])
    @users = User.paginate(page: params[:page])
    #@books = @user.books.paginate(page: params[:page])
  end
  
  def new
  end

  #def show
    #@books = Book.all
    #respond_with(@books)
    #user = User.first
   #@books = books.first(:id)
    #@books = current_user.books.build(books_params)

    #@user = User.find(params[:id])
    #@book1 = user.book.find(params[:id])
    #@book2 = user.books.find(params[:id])
    #@books3 = user.book.find(params[:id])
    #@books4 = user.books.find(params[:id])


  #end
end





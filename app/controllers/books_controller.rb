class BooksController < ApplicationController
  
  def index
    @testbook = Book.last.title
    @testbook1 = Book.first.title
    @testbook2 = Book.exists?(id: [1, 4, 8])


    #@users = User.paginate(page: params[:page])
      #@user = User.find(params[1])
      #@user = User.first
    ##@books = Book.all
    ##books = Book.all
      #@asfd = User.find(params[:id])
    ##@asdf = User.find_by(id: session[:user_id])
      #@asdf = User.find_by(email: params[:name][:email])
    
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





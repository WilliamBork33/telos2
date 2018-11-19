class BooksController < ApplicationController
  
  def index
    @a = User.find([35])
    @b = User.find_by(id: '35')
    @c = Book.find_by(id: '27')
    #@d = User.all(params[:id])

   
    #User.find(params[:id]).destroy

    #@users = User.paginate(page: params[:page])
    #@user = User.all
   
    #@books = Book.all
    #@book = Book.paginate(page: params[:page])

    #@bookss = User.all
    #@testbook = Book.last.user_id
    #@testbook1 = Book.first.title
    #@testbook2 = Book.exists?(id: [1, 4, 8])

  end

  def show
    
    @user = User.find(params[:id])
    @book = Book.find(params[:id])
  end
  
  def new
    @book = Book.new
   
  end

  def create
   
    @book = Book.new(book_params)    # Not the final implementation!
    @book.user_id = current_user.id
    if @book.save
      redirect_to @book
    else
      render 'new'
    end
  end
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

  private



   

    def book_params
      params.require(:book).permit(:title, :description, :author, :price, :user_id)
    end
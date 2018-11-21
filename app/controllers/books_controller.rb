class BooksController < ApplicationController
  
  def index
    #@user_id = User.all
    @book_list = Book.all
  end

  def show
    #@user = User.find(params[:id])
    @book = Book.find(params[:id])
    @user_id = current_user.name
  end
  
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to @book
    else
      render 'new'
    end
  end


  def destroy
    Book.find(params[:id]).destroy
    flash[:success] = "Book Removed from Market"
    redirect_back(fallback_location: users_url)
  end

end

  private



   

    def book_params
      params.require(:book).permit(:title, :description, :author, :price, :user_id)
    end
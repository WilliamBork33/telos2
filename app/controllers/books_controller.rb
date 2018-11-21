class BooksController < ApplicationController
  
  def index
    @book_list = Book.all
  end

  def show
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

  private

    def user_params
      params.require(:user).permit(:name, :email, :address, :phone, :password, :password_confirmation)
    end

    def book_params
      params.require(:book).permit(:title, :description, :author, :price, :user_id)
    end
end

class BooksController < ApplicationController
  
  before_action :logged_in_user, only: [:index, :show, :new, :create, :destroy]
  
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


  ### Methods filtered by before filters ###

  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  # Confirms the correct user.
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end

  # Confirms an admin user.
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :address, :phone, :password, :password_confirmation)
    end

    def book_params
      params.require(:book).permit(:title, :description, :author, :price, :user_id)
    end
    
end

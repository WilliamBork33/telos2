class CartsController < ApplicationController
  def index
    #@user = User.find(params[:id])
    @cart_item_list = CartItem.all
  end

  def show
    
  end

  def new
  end

  def create
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :address, :phone, :password, :password_confirmation)
  end

  def book_params
    params.require(:book).permit(:title, :description, :author, :price, :user_id)
  end


end

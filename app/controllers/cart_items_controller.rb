class CartItemsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @cart_item = CartItem.new
  end

  def create
    @book_list = Book.all
    @cart_item = CartItem.new()
    if @cart_item.save
      redirect_to myCart_path
    else
      render 'new'
      flash[:error] = "def create error"
    end
  end

  def edit
  end

  def update
  end

  def destroy
    CartItem.find(params[:id]).destroy
    flash[:success] = "Item Removed from Cart"
    redirect_to myCart_url
  end

  private
    def book_params
      params.require(:book).permit(:title, :description, :author, :price, :user_id)
    end

    def cart_item_params
      params.require(:cart_item).permit(:title, :description, :author, :seller, :price, :user_id)
    end

end

class CartsController < ApplicationController
  def index
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
end

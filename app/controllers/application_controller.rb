class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  # To set a cart by browser session
  def current_cart
    if !session[:cart_id].nil?
      @cart = Cart.find(session[:cart_id])
    else
      @cart = Cart.new
      @cart_id = session[:cart_id]
    end
  end

end
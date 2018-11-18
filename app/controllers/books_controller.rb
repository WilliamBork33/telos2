class BooksController < ApplicationController
  def new
  end

  def show
    #user = User.first
    @books = books.first(:id)
  end
end

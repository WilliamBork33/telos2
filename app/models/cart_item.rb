class CartItem < ApplicationRecord
  #belongs_to :cart
  #belongs_to :books
  default_scope -> { order(created_at: :desc) }
end

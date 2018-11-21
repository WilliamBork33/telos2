class CartItem < ApplicationRecord

  # Associates cart items its cart in the database
  #belongs_to :cart
  #belongs_to :books

  # Determines default list ordering
  default_scope -> { order(created_at: :desc) }

end

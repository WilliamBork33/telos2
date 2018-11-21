class Cart < ApplicationRecord

  # Associates cart with its cart items in the database
  #has_many :cart_items

  # Determines default list ordering
  default_scope -> { order(created_at: :desc) }
  
end

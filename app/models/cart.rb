class Cart < ApplicationRecord
  default_scope -> { order(created_at: :desc) }
  #has_many :cart_items
end

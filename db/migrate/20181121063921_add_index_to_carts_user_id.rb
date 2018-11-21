class AddIndexToCartsUserId < ActiveRecord::Migration[5.2]
  def change
    add_index :carts, :user_id, unique: true
    add_index :cart_items, :user_id, unique: true
  end
end

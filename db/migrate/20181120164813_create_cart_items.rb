class CreateCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items do |t|
      t.string :title
      t.string :description
      t.string :author
      t.string :seller
      t.decimal :price
      t.integer :user_id

      t.timestamps
    end
  end
end

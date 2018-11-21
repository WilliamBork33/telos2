class Book < ApplicationRecord

  # Associates users with their books in the database
  belongs_to :user

  # Determines default list orderin
  default_scope -> { order(created_at: :desc) }

  # Validate new book info
  validates :title,  presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 50 }
  validates :author, presence: true, length: { maximum: 50 }
  validates :price, presence: true, length: { maximum: 50 }
  
end

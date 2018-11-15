class User < ApplicationRecord
  #Before saving, change new user email to lowercase
  before_save { self.email = email.downcase }

  # Validate that email is in example@example.com format
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  # Validate new user info is present and within expected length
  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 50 },
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false }
  
  # Rails ActiveModel method to hash password for database
  has_secure_password

  # Validate password is present and long enough
  validates :password, presence: true, length: { minimum: 6 }
  

end

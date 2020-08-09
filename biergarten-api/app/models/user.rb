class User < ApplicationRecord
  
    has_many :reviews
    has_many :beers, through: :reviews 
    has_many :favorites
    has_many :beers, through: :favorites

   # validates :username, presence: true
    validates :username, uniqueness: true
   # validates :password, presence: true
    #validates :password, confirmation: true
    has_secure_password
  

end

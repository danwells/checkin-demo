class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :password, :password_confirmation, :email
  
  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true
  
  has_many :arrivals
end

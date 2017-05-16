class User < ApplicationRecord
  validates_presence_of :username

  has_many :recommendations
  has_many :reviews
  
end
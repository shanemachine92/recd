class Fandom < ApplicationRecord
  belongs_to :recommendation
  has_many :recommendations
end

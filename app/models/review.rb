class Review < ApplicationRecord
  validates_presence_of :rating, :body

  belongs_to :recommendation

end

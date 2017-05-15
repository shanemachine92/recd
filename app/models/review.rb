class Review < ApplicationRecord
  validates_presence_of :rating, :body

end

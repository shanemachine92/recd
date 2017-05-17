class Review < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :recommendation
end

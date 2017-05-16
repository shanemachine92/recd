class AddRecommendationIdToReviews < ActiveRecord::Migration[5.1]
  def change
    add_reference :reviews, :recommendation, foreign_key: true
  end
end

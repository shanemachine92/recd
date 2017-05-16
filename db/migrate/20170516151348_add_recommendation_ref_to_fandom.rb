class AddRecommendationRefToFandom < ActiveRecord::Migration[5.1]
  def change
    add_reference :recommendations, :fandom, foreign_key: true
  end
end

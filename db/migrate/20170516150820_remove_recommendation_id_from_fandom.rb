class RemoveRecommendationIdFromFandom < ActiveRecord::Migration[5.1]
  def change
    remove_column :fandoms, :recommendation_id, :string
  end
end

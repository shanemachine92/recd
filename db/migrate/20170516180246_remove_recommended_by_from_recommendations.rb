class RemoveRecommendedByFromRecommendations < ActiveRecord::Migration[5.1]
  def change
    remove_column :recommendations, :recommended_by, :string
  end
end

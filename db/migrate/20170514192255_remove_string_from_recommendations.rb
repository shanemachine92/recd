class RemoveStringFromRecommendations < ActiveRecord::Migration[5.1]
  def change
    remove_column :recommendations, :string, :string
  end
end

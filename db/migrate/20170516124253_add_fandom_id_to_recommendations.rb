class AddFandomIdToRecommendations < ActiveRecord::Migration[5.1]
  def change
    add_column :recommendations, :fandom_id, :string
  end
end

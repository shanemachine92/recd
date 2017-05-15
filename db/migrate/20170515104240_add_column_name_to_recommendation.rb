class AddColumnNameToRecommendation < ActiveRecord::Migration[5.1]
  def change
    add_column :recommendations, :fandom, :string
  end
end

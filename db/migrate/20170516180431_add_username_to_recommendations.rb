class AddUsernameToRecommendations < ActiveRecord::Migration[5.1]
  def change
    add_column :recommendations, :username, :string
  end
end

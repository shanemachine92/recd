class CreateRecommendations < ActiveRecord::Migration[5.1]
  def change
    create_table :recommendations do |t|
      t.string :title
      t.text :summary
      t.string :author
      t.string :genre
      t.string :length
      t.string :rating
      t.string :string
      t.boolean :complete
      t.string :recommended_by
      t.text :recommender_review

      t.timestamps
    end
  end
end

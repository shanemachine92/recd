class CreateRecommendations < ActiveRecord::Migration[5.1]
  def change
    create_table :recommendations do |t|
      t.string :title
      t.string :url
      t.string :author
      t.string :pairings
      t.text   :summary
      t.string :rated
      t.string :language
      t.string :genre
      t.string :chapters
      t.string :words
      t.boolean :complete
      t.string :recommended_by

      t.timestamps
    end
  end
end

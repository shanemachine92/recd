class CreateGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :genres do |t|
      t.string :name
      t.references :recommendation, foreign_key: true
    end
  end
end

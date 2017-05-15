class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :username
      t.integer :rating
      t.text :body

      t.timestamps
    end
  end
end

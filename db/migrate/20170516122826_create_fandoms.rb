class CreateFandoms < ActiveRecord::Migration[5.1]
  def change
    create_table :fandoms do |t|
      t.string :name
      t.references :recommendation, foreign_key: true

      t.timestamps
    end
  end
end

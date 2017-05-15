class CreateFriends < ActiveRecord::Migration[5.1]
  def change
    create_table :friends do |t|
      t.string :username
      t.text :profile_pic
      t.string :country
      t.text :about

      t.timestamps
    end
  end
end

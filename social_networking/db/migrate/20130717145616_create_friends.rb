class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :my_id
      t.references :user, index: true

      t.timestamps
    end
  end
end

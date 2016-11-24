class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.integer :count_living_space, null: false
      t.integer :square, null: false
      t.boolean :bathroom, null: false
      t.boolean :toilet, null: false

      t.timestamps
    end
  end
end

class CreateRoomBuildings < ActiveRecord::Migration[5.0]
  def change
    create_table :room_buildings do |t|
      t.references :room, foreign_key: true
      t.references :building, foreign_key: true
      t.integer :floor, null: false
      t.text :attribute

      t.timestamps
    end
  end
end

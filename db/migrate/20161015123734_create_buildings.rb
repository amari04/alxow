class CreateBuildings < ActiveRecord::Migration[5.0]
  def change
    create_table :buildings do |t|
      t.text :address, null: false
      t.integer :floor, null: false

      t.timestamps
    end
  end
end

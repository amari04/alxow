class CreateInventaries < ActiveRecord::Migration[5.0]
  def change
    create_table :inventaries do |t|
      t.references :room, foreign_key: true
      t.integer :invent_numb, null: false
      t.text :kind, null: false
      t.text :status, null: false

      t.timestamps
    end
  end
end

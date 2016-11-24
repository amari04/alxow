class CreateGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :guests do |t|
      t.references :person, foreign_key: true
      t.date :start_date, null: false
      t.date :finish_date, null: false
      t.text :event, null: false
      
      t.timestamps
    end
  end
end

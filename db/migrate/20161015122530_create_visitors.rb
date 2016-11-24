class CreateVisitors < ActiveRecord::Migration[5.0]
  def change
    create_table :visitors do |t|
      t.references :person, foreign_key: true
      t.date :start_date, null: false
      t.date :finish_date, null: false
      t.boolean :accommodation, null: false
      
      t.timestamps
    end
  end
end

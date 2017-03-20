class CreateBeddings < ActiveRecord::Migration[5.0]
  def change
    create_table :beddings do |t|
      t.references :person, foreign_key: true
      t.integer :count, null: false
      t.text :kind, null: false

      t.timestamps
    end
  end
end

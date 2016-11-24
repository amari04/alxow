class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.references :student, foreign_key: true
      t.references :worker, foreign_key: true
      t.integer :cost, null: false
      t.boolean :status, null: false

      t.timestamps
    end
  end
end

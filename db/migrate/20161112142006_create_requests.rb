class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.references :person, foreign_key: true
      t.text :description, null: false
      t.text :status, null: false
      t.text :kind, null: false

      t.timestamps
    end
  end
end

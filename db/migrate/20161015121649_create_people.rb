class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.text :last_name, null: false
      t.text :first_name, null: false
      t.text :second_name
      t.date :birthday, null: false
      t.string :sex, null: false
      t.string :series, null: false
      t.string :number, null: false
      t.text :organization, null: false
      t.date :pass_date, null: false
      t.text :address, null: false
      t.index [:series, :number], unique: true

      t.timestamps
    end
  end
end

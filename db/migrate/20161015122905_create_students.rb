class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.references :person, foreign_key: true
      t.boolean :medical_certificate, null: false

      t.timestamps
    end
  end
end

class CreateExecutors < ActiveRecord::Migration[5.0]
  def change
    create_table :executors do |t|
      t.references :request, foreign_key: true
      t.references :employee, foreign_key: true
      t.integer :executortype, null: false

      t.timestamps
    end
  end
end

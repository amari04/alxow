class CreateWorkers < ActiveRecord::Migration[5.0]
  def change
    create_table :workers do |t|
      t.text :position, null: false

      t.timestamps
    end
  end
end

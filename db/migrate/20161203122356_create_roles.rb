class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.text :name
      t.text :shortname
      t.text :englishname

      t.timestamps
    end
  end
end

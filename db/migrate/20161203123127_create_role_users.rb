class CreateRoleUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :role_users do |t|
      t.references :role, foreign_key: true
      t.references :user, foreign_key: true
      t.jsonb :data

      t.timestamps
    end
  end
end

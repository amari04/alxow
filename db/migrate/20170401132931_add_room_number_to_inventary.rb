class AddRoomNumberToInventary < ActiveRecord::Migration[5.0]
  def change
    add_column :inventaries, :room_number, :integer, null: false
  end
end

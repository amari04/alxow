class CreateJoinTableEmployeePost < ActiveRecord::Migration[5.0]
  def change
    create_join_table :employees, :posts do |t|
       t.index [:employee_id, :post_id]
      # t.index [:_id, :_id]
    end
  end
end

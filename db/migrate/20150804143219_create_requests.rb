class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :employee_name
      t.date :date_begin
      t.date :date_end
      t.string :leave_type

      t.timestamps null: false
    end
  end
end

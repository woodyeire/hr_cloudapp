class CreateLeaves < ActiveRecord::Migration
  def change
    create_table :leaves do |t|
      t.string :employee_name
      t.integer :employee_id
      t.date :date_commencing
      t.date :date_ending
      t.string :leave_type

      t.timestamps null: false
    end
  end
end

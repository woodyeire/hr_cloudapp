class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :empcode
      t.string :f_name
      t.string :l_name
      t.string :address
      t.string :phone
      t.string :email
      t.string :sex
      t.date :dob
      t.date :start_date
      t.string :dept
      t.string :role
      t.string :salary
      t.string :manager
      t.text :notes

      t.timestamps null: false
    end
  end
end

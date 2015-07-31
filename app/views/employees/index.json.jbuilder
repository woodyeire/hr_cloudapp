json.array!(@employees) do |employee|
  json.extract! employee, :id, :empcode, :f_name, :l_name, :address, :phone, :email, :sex, :dob, :start_date, :dept, :role, :salary, :manager, :notes
  json.url employee_url(employee, format: :json)
end

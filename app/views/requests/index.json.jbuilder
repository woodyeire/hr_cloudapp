json.array!(@requests) do |request|
  json.extract! request, :id, :employee_name, :date_begin, :date_end, :leave_type
  json.url request_url(request, format: :json)
end

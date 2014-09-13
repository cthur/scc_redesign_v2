json.array!(@staffs) do |staff|
  json.extract! staff, :id, :first_name, :last_name, :phone, :email, :division
  json.url staff_url(staff, format: :json)
end

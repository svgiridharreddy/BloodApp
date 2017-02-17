json.extract! register, :id, :Name, :Bloodgroup, :Phone, :Address, :created_at, :updated_at
json.url register_url(register, format: :json)
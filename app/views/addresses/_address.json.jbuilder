json.extract! address, :id, :name, :street_address, :country, :city, :zip_code, :created_at, :updated_at
json.url address_url(address, format: :json)
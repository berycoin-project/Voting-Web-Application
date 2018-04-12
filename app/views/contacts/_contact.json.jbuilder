json.extract! contact, :id, :name, :contact_number, :created_at, :updated_at
json.url contact_url(contact, format: :json)
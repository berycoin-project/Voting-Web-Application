json.extract! profile, :id, :name, :first_name, :last_name, :date_of_birth, :gender, :created_at, :updated_at
json.url profile_url(profile, format: :json)
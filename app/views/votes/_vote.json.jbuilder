json.extract! vote, :id, :name, :vote_type, :vote_weight, :vote_message, :created_at, :updated_at
json.url vote_url(vote, format: :json)
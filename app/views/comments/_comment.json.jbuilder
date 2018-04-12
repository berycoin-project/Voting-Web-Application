json.extract! comment, :id, :name, :content, :pic_url, :created_at, :updated_at
json.url comment_url(comment, format: :json)
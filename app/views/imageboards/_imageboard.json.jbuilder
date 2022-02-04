json.extract! imageboard, :id, :name, :created_at, :updated_at
json.url imageboard_url(imageboard, format: :json)

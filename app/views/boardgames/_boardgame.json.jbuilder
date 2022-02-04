json.extract! boardgame, :id, :name, :min_players, :max_players, :description, :ages, :created_at, :updated_at
json.url boardgame_url(boardgame, format: :json)

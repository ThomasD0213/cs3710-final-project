json.extract! playlist, :id, :title, :description, :user_id, :created_at, :updated_at
json.url playlist_url(playlist, format: :json)

json.extract! song, :id, :name, :album, :length, :created_at, :updated_at
json.url song_url(song, format: :json)
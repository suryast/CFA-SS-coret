json.extract! artist, :id, :user_id, :name, :avatar, :earning_to_date, :created_at, :updated_at
json.url artist_url(artist, format: :json)

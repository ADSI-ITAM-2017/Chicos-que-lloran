json.extract! message, :id, :content, :created_at, :updated_at, :usuario1_id, :usuario2_id
json.url message_url(message, format: :json)

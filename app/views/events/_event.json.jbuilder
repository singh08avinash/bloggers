json.extract! event, :id, :title, :place, :body, :created_at, :updated_at
json.url event_url(event, format: :json)

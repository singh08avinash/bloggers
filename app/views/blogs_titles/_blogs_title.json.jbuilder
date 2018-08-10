json.extract! blogs_title, :id, :name, :body, :created_at, :updated_at
json.url blogs_title_url(blogs_title, format: :json)

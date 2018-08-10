json.extract! comment, :id, :title, :body, :resource_id, :resource_type, :created_at, :updated_at
json.url comment_url(comment, format: :json)

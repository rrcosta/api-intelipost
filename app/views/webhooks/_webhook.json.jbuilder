json.extract! webhook, :id, :name, :url, :status, :created_at, :updated_at
json.url webhook_url(webhook, format: :json)

json.extract! history, :id, :code, :date, :client, :lot, :item, :created_at, :updated_at
json.url history_url(history, format: :json)

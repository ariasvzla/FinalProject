json.extract! transaction, :id, :date, :earnings, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)

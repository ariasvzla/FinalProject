json.extract! room, :id, :roomtype, :romnum, :pricepn, :created_at, :updated_at
json.url room_url(room, format: :json)

json.extract! booking, :id, :totalcost, :start, :end, :numpeople, :created_at, :updated_at
json.url booking_url(booking, format: :json)

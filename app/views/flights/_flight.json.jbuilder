json.extract! flight, :id, :fligthcode, :airline, :stopsn, :seatn, :timestart, :timeend, :price, :planeimg, :origin, :dest, :created_at, :updated_at
json.url flight_url(flight, format: :json)

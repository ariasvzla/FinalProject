json.extract! hotel, :id, :name, :location, :roomtype, :numroom, :avaibility, :hotelimg, :pricepn, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)

json.extract! profile, :id, :firstname, :lastname, :address, :phone, :gender, :dob, :created_at, :updated_at
json.url profile_url(profile, format: :json)

class Room < ApplicationRecord
	 belongs_to :hotel
	has_many :avaibilities
	has_many :bookings
end

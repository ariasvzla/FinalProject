class Room < ApplicationRecord
	belongs_to :hotel
	has_many :avaibilities
	has_many :bookings


def self.search(search)
 where("roomtype LIKE ?", "%#{search}%") 
end

end

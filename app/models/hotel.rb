class Hotel < ApplicationRecord
	has_many :rooms
	belongs_to :hoteladmin
	has_many :bookings

def self.search(search)
  # where("location LIKE ?", "%#{search}%") 
  Hotel.joins(:rooms).where("location LIKE ?  AND roomtype LIKE ?", "%#{search}%","%#{search}%" )
end
 	




end

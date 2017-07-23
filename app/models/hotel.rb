class Hotel < ApplicationRecord
	has_many :rooms
	belongs_to :hoteladmin
	 has_many :bookings
end

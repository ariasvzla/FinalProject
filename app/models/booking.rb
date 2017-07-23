class Booking < ApplicationRecord
	belongs_to :transactions
	belongs_to :hotels
	belongs_to :rooms
end

class Hotel < ApplicationRecord
	has_many :rooms
	
	belongs_to :hoteladmin
end

class Room < ApplicationRecord
	 belongs_to :hotels

	has_many :avaibilities
end

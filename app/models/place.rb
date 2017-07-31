class Place < ApplicationRecord





	def self.search(search)
  where("location LIKE ?","%#{search}%") 
  # Hotel.joins(:rooms).where("location LIKE ?  AND roomtype LIKE ?", "%#{search}%","%#{search}%" )
end
 	

end

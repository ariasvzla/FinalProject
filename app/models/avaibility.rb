class Avaibility < ApplicationRecord
belongs_to :room


def self.search(search)
 where("pricepn > ?", "%#{search}%") 
end

end

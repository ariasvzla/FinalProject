class AddImgToHotels < ActiveRecord::Migration[5.0]
  def change
    add_column :hotels, :hotelimg2, :string
  end
end

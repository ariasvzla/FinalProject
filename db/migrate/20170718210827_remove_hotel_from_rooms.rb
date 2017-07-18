class RemoveHotelFromRooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :hotel, :string
  end
end

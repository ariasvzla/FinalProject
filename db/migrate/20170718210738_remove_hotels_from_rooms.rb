class RemoveHotelsFromRooms < ActiveRecord::Migration[5.0]
  def change
    remove_reference :rooms, :hotels, foreign_key: true
  end
end

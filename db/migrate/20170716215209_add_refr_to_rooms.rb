class AddRefrToRooms < ActiveRecord::Migration[5.0]
  def change
    add_reference :rooms, :hotels, foreign_key: true
  end
end

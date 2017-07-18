class AddRef2ToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :hotel, :refrences
  end
end

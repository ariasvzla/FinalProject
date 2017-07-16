class AddQuatityToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :quantity, :integer
  end
end

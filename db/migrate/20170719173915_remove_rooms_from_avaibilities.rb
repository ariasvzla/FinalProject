class RemoveRoomsFromAvaibilities < ActiveRecord::Migration[5.0]
  def change
    remove_column :avaibilities, :rooms_id, :string
  end
end

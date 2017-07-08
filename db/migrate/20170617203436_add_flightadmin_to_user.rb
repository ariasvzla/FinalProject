class AddFlightadminToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :flightadmin, :boolean
  end
end

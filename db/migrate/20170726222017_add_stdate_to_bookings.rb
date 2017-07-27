class AddStdateToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :stdate, :string
  end
end

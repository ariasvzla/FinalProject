class AddEndateToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :endate, :string
  end
end

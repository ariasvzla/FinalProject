class AddRef2ToBookings < ActiveRecord::Migration[5.0]
  def change
    add_reference :bookings, :hotel, foreign_key: true
  end
end

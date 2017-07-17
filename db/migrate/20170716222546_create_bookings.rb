class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.decimal :totalcost
      t.datetime :start
      t.datetime :end
      t.integer :numpeople

      t.timestamps
    end
  end
end

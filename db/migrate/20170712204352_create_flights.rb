class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.string :fligthcode
      t.string :airline
      t.integer :stopsn
      t.integer :seatn
      t.datetime :timestart
      t.datetime :timeend
      t.decimal :price
      t.string :planeimg
      t.string :origin
      t.string :dest

      t.timestamps
    end
  end
end

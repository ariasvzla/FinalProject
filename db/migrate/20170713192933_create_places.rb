class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :name
      t.string :location
      t.string :interest
      t.decimal :price
      t.datetime :open
      t.datetime :close
      t.string :phone

      t.timestamps
    end
  end
end

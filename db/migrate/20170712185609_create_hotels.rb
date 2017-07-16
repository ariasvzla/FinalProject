class CreateHotels < ActiveRecord::Migration[5.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :location
      t.string :roomtype
      t.integer :numroom
      t.boolean :avaibility
      t.string :hotelimg
      t.decimal :pricepn

      t.timestamps
    end
  end
end

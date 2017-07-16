class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :roomtype
      t.integer :romnum
      t.decimal :pricepn

      t.timestamps
    end
  end
end

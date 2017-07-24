class AddDescrToHotels < ActiveRecord::Migration[5.0]
  def change
    add_column :hotels, :description, :string
  end
end

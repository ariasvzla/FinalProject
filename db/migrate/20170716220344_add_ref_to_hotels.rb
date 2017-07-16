class AddRefToHotels < ActiveRecord::Migration[5.0]
  def change
    add_reference :hotels, :hoteladmin, foreign_key: true
  end
end

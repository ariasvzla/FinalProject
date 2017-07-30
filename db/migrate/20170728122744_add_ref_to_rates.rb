class AddRefToRates < ActiveRecord::Migration[5.0]
  def change
    add_reference :rates, :hotel, foreign_key: true
  end
end

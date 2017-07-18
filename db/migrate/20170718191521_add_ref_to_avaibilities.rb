class AddRefToAvaibilities < ActiveRecord::Migration[5.0]
  def change
    add_reference :avaibilities, :rooms, foreign_key: true
  end
end

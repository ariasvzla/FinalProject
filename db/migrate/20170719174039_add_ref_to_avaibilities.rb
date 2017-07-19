class AddRefToAvaibilities < ActiveRecord::Migration[5.0]
  def change
    add_reference :avaibilities, :room, foreign_key: true
  end
end

class AddHoteladminToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :hoteladmin, :boolean
  end
end

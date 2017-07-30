class AddSdatesToAvaibilities < ActiveRecord::Migration[5.0]
  def change
    add_column :avaibilities, :datef, :string
    add_column :avaibilities, :datet, :string
  end
end

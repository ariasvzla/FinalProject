class CreateSetvs < ActiveRecord::Migration[5.0]
  def change
    create_table :setvs do |t|
      t.integer :set

      t.timestamps
    end
  end
end

class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.datetime :date
      t.decimal :earnings

      t.timestamps
    end
  end
end

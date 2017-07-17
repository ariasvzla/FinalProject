class AddRefToTransactions < ActiveRecord::Migration[5.0]
  def change
    add_reference :transactions, :booking, foreign_key: true
  end
end

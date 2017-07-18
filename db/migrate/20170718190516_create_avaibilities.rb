class CreateAvaibilities < ActiveRecord::Migration[5.0]
  def change
    create_table :avaibilities do |t|
      t.datetime :datefrom
      t.datetime :dateto
      t.decimal :pricepn
      t.boolean :available

      t.timestamps
    end
  end
end

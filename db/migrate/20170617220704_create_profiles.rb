class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.string :address
      t.string :phone
      t.string :gender
      t.datetime :dob

      t.timestamps
    end
  end
end

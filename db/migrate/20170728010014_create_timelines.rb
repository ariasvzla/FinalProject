class CreateTimelines < ActiveRecord::Migration[5.0]
  def change
    create_table :timelines do |t|
      t.string :title
      t.string :desc
      t.string :avatar

      t.timestamps
    end
  end
end

class AddRewardToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :rewardp, :integer
  end
end

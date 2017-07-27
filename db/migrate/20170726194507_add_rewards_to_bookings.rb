class AddRewardsToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :rewardp, :integer
  end
end

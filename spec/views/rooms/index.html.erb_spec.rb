require 'rails_helper'

RSpec.describe "rooms/index", type: :view do
  before(:each) do
    assign(:rooms, [
      Room.create!(
        :roomtype => "Roomtype",
        :romnum => 2,
        :pricepn => "9.99"
      ),
      Room.create!(
        :roomtype => "Roomtype",
        :romnum => 2,
        :pricepn => "9.99"
      )
    ])
  end

  it "renders a list of rooms" do
    render
    assert_select "tr>td", :text => "Roomtype".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "flights/index", type: :view do
  before(:each) do
    assign(:flights, [
      Flight.create!(
        :fligthcode => "Fligthcode",
        :airline => "Airline",
        :stopsn => 2,
        :seatn => 3,
        :price => "9.99",
        :planeimg => "Planeimg",
        :origin => "Origin",
        :dest => "Dest"
      ),
      Flight.create!(
        :fligthcode => "Fligthcode",
        :airline => "Airline",
        :stopsn => 2,
        :seatn => 3,
        :price => "9.99",
        :planeimg => "Planeimg",
        :origin => "Origin",
        :dest => "Dest"
      )
    ])
  end

  it "renders a list of flights" do
    render
    assert_select "tr>td", :text => "Fligthcode".to_s, :count => 2
    assert_select "tr>td", :text => "Airline".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Planeimg".to_s, :count => 2
    assert_select "tr>td", :text => "Origin".to_s, :count => 2
    assert_select "tr>td", :text => "Dest".to_s, :count => 2
  end
end

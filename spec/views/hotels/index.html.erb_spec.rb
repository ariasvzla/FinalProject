require 'rails_helper'

RSpec.describe "hotels/index", type: :view do
  before(:each) do
    assign(:hotels, [
      Hotel.create!(
        :name => "Name",
        :location => "Location",
        :roomtype => "Roomtype",
        :numroom => 2,
        :avaibility => false,
        :hotelimg => "Hotelimg",
        :pricepn => "9.99"
      ),
      Hotel.create!(
        :name => "Name",
        :location => "Location",
        :roomtype => "Roomtype",
        :numroom => 2,
        :avaibility => false,
        :hotelimg => "Hotelimg",
        :pricepn => "9.99"
      )
    ])
  end

  it "renders a list of hotels" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Roomtype".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Hotelimg".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end

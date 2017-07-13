require 'rails_helper'

RSpec.describe "places/edit", type: :view do
  before(:each) do
    @place = assign(:place, Place.create!(
      :name => "MyString",
      :location => "MyString",
      :interest => "MyString",
      :price => "9.99",
      :phone => "MyString"
    ))
  end

  it "renders the edit place form" do
    render

    assert_select "form[action=?][method=?]", place_path(@place), "post" do

      assert_select "input#place_name[name=?]", "place[name]"

      assert_select "input#place_location[name=?]", "place[location]"

      assert_select "input#place_interest[name=?]", "place[interest]"

      assert_select "input#place_price[name=?]", "place[price]"

      assert_select "input#place_phone[name=?]", "place[phone]"
    end
  end
end

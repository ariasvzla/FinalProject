require 'rails_helper'

RSpec.describe "hotels/edit", type: :view do
  before(:each) do
    @hotel = assign(:hotel, Hotel.create!(
      :name => "MyString",
      :location => "MyString",
      :roomtype => "MyString",
      :numroom => 1,
      :avaibility => false,
      :hotelimg => "MyString",
      :pricepn => "9.99"
    ))
  end

  it "renders the edit hotel form" do
    render

    assert_select "form[action=?][method=?]", hotel_path(@hotel), "post" do

      assert_select "input#hotel_name[name=?]", "hotel[name]"

      assert_select "input#hotel_location[name=?]", "hotel[location]"

      assert_select "input#hotel_roomtype[name=?]", "hotel[roomtype]"

      assert_select "input#hotel_numroom[name=?]", "hotel[numroom]"

      assert_select "input#hotel_avaibility[name=?]", "hotel[avaibility]"

      assert_select "input#hotel_hotelimg[name=?]", "hotel[hotelimg]"

      assert_select "input#hotel_pricepn[name=?]", "hotel[pricepn]"
    end
  end
end

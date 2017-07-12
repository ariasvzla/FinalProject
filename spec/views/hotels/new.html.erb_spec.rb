require 'rails_helper'

RSpec.describe "hotels/new", type: :view do
  before(:each) do
    assign(:hotel, Hotel.new(
      :name => "MyString",
      :location => "MyString",
      :roomtype => "MyString",
      :numroom => 1,
      :avaibility => false,
      :hotelimg => "MyString",
      :pricepn => "9.99"
    ))
  end

  it "renders new hotel form" do
    render

    assert_select "form[action=?][method=?]", hotels_path, "post" do

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

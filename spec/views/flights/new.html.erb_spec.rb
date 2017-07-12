require 'rails_helper'

RSpec.describe "flights/new", type: :view do
  before(:each) do
    assign(:flight, Flight.new(
      :fligthcode => "MyString",
      :airline => "MyString",
      :stopsn => 1,
      :seatn => 1,
      :price => "9.99",
      :planeimg => "MyString",
      :origin => "MyString",
      :dest => "MyString"
    ))
  end

  it "renders new flight form" do
    render

    assert_select "form[action=?][method=?]", flights_path, "post" do

      assert_select "input#flight_fligthcode[name=?]", "flight[fligthcode]"

      assert_select "input#flight_airline[name=?]", "flight[airline]"

      assert_select "input#flight_stopsn[name=?]", "flight[stopsn]"

      assert_select "input#flight_seatn[name=?]", "flight[seatn]"

      assert_select "input#flight_price[name=?]", "flight[price]"

      assert_select "input#flight_planeimg[name=?]", "flight[planeimg]"

      assert_select "input#flight_origin[name=?]", "flight[origin]"

      assert_select "input#flight_dest[name=?]", "flight[dest]"
    end
  end
end

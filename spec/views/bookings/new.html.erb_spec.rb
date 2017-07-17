require 'rails_helper'

RSpec.describe "bookings/new", type: :view do
  before(:each) do
    assign(:booking, Booking.new(
      :totalcost => "9.99",
      :numpeople => 1
    ))
  end

  it "renders new booking form" do
    render

    assert_select "form[action=?][method=?]", bookings_path, "post" do

      assert_select "input#booking_totalcost[name=?]", "booking[totalcost]"

      assert_select "input#booking_numpeople[name=?]", "booking[numpeople]"
    end
  end
end

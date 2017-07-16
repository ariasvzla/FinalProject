require 'rails_helper'

RSpec.describe "bookings/edit", type: :view do
  before(:each) do
    @booking = assign(:booking, Booking.create!(
      :totalcost => "9.99",
      :numpeople => 1
    ))
  end

  it "renders the edit booking form" do
    render

    assert_select "form[action=?][method=?]", booking_path(@booking), "post" do

      assert_select "input#booking_totalcost[name=?]", "booking[totalcost]"

      assert_select "input#booking_numpeople[name=?]", "booking[numpeople]"
    end
  end
end

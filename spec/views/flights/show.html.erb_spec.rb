require 'rails_helper'

RSpec.describe "flights/show", type: :view do
  before(:each) do
    @flight = assign(:flight, Flight.create!(
      :fligthcode => "Fligthcode",
      :airline => "Airline",
      :stopsn => 2,
      :seatn => 3,
      :price => "9.99",
      :planeimg => "Planeimg",
      :origin => "Origin",
      :dest => "Dest"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Fligthcode/)
    expect(rendered).to match(/Airline/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Planeimg/)
    expect(rendered).to match(/Origin/)
    expect(rendered).to match(/Dest/)
  end
end

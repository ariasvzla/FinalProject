require 'rails_helper'

RSpec.describe "hotels/show", type: :view do
  before(:each) do
    @hotel = assign(:hotel, Hotel.create!(
      :name => "Name",
      :location => "Location",
      :roomtype => "Roomtype",
      :numroom => 2,
      :avaibility => false,
      :hotelimg => "Hotelimg",
      :pricepn => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Roomtype/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Hotelimg/)
    expect(rendered).to match(/9.99/)
  end
end

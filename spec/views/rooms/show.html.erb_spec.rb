require 'rails_helper'

RSpec.describe "rooms/show", type: :view do
  before(:each) do
    @room = assign(:room, Room.create!(
      :roomtype => "Roomtype",
      :romnum => 2,
      :pricepn => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Roomtype/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
  end
end

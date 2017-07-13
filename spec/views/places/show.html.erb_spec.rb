require 'rails_helper'

RSpec.describe "places/show", type: :view do
  before(:each) do
    @place = assign(:place, Place.create!(
      :name => "Name",
      :location => "Location",
      :interest => "Interest",
      :price => "9.99",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Interest/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Phone/)
  end
end

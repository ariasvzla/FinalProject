require 'rails_helper'

RSpec.describe "avaibilities/show", type: :view do
  before(:each) do
    @avaibility = assign(:avaibility, Avaibility.create!(
      :pricepn => "9.99",
      :available => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
  end
end

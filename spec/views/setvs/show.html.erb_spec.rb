require 'rails_helper'

RSpec.describe "setvs/show", type: :view do
  before(:each) do
    @setv = assign(:setv, Setv.create!(
      :set => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end

require 'rails_helper'

RSpec.describe "avaibilities/index", type: :view do
  before(:each) do
    assign(:avaibilities, [
      Avaibility.create!(
        :pricepn => "9.99",
        :available => false
      ),
      Avaibility.create!(
        :pricepn => "9.99",
        :available => false
      )
    ])
  end

  it "renders a list of avaibilities" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

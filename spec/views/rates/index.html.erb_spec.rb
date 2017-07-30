require 'rails_helper'

RSpec.describe "rates/index", type: :view do
  before(:each) do
    assign(:rates, [
      Rate.create!(
        :star => 2,
        :coments => "Coments"
      ),
      Rate.create!(
        :star => 2,
        :coments => "Coments"
      )
    ])
  end

  it "renders a list of rates" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Coments".to_s, :count => 2
  end
end

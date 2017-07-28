require 'rails_helper'

RSpec.describe "rates/new", type: :view do
  before(:each) do
    assign(:rate, Rate.new(
      :star => 1,
      :coments => "MyString"
    ))
  end

  it "renders new rate form" do
    render

    assert_select "form[action=?][method=?]", rates_path, "post" do

      assert_select "input#rate_star[name=?]", "rate[star]"

      assert_select "input#rate_coments[name=?]", "rate[coments]"
    end
  end
end

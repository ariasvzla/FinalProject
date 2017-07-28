require 'rails_helper'

RSpec.describe "rates/edit", type: :view do
  before(:each) do
    @rate = assign(:rate, Rate.create!(
      :star => 1,
      :coments => "MyString"
    ))
  end

  it "renders the edit rate form" do
    render

    assert_select "form[action=?][method=?]", rate_path(@rate), "post" do

      assert_select "input#rate_star[name=?]", "rate[star]"

      assert_select "input#rate_coments[name=?]", "rate[coments]"
    end
  end
end

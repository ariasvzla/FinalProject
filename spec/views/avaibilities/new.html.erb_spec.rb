require 'rails_helper'

RSpec.describe "avaibilities/new", type: :view do
  before(:each) do
    assign(:avaibility, Avaibility.new(
      :pricepn => "9.99",
      :available => false
    ))
  end

  it "renders new avaibility form" do
    render

    assert_select "form[action=?][method=?]", avaibilities_path, "post" do

      assert_select "input#avaibility_pricepn[name=?]", "avaibility[pricepn]"

      assert_select "input#avaibility_available[name=?]", "avaibility[available]"
    end
  end
end

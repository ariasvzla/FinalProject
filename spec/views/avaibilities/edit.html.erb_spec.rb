require 'rails_helper'

RSpec.describe "avaibilities/edit", type: :view do
  before(:each) do
    @avaibility = assign(:avaibility, Avaibility.create!(
      :pricepn => "9.99",
      :available => false
    ))
  end

  it "renders the edit avaibility form" do
    render

    assert_select "form[action=?][method=?]", avaibility_path(@avaibility), "post" do

      assert_select "input#avaibility_pricepn[name=?]", "avaibility[pricepn]"

      assert_select "input#avaibility_available[name=?]", "avaibility[available]"
    end
  end
end

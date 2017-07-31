require 'rails_helper'

RSpec.describe "setvs/edit", type: :view do
  before(:each) do
    @setv = assign(:setv, Setv.create!(
      :set => 1
    ))
  end

  it "renders the edit setv form" do
    render

    assert_select "form[action=?][method=?]", setv_path(@setv), "post" do

      assert_select "input#setv_set[name=?]", "setv[set]"
    end
  end
end

require 'rails_helper'

RSpec.describe "setvs/new", type: :view do
  before(:each) do
    assign(:setv, Setv.new(
      :set => 1
    ))
  end

  it "renders new setv form" do
    render

    assert_select "form[action=?][method=?]", setvs_path, "post" do

      assert_select "input#setv_set[name=?]", "setv[set]"
    end
  end
end

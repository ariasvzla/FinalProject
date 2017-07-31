require 'rails_helper'

RSpec.describe "setvs/index", type: :view do
  before(:each) do
    assign(:setvs, [
      Setv.create!(
        :set => 2
      ),
      Setv.create!(
        :set => 2
      )
    ])
  end

  it "renders a list of setvs" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end

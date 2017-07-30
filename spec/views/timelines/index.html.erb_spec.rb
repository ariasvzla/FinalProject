require 'rails_helper'

RSpec.describe "timelines/index", type: :view do
  before(:each) do
    assign(:timelines, [
      Timeline.create!(
        :title => "Title",
        :desc => "Desc",
        :avatar => "Avatar"
      ),
      Timeline.create!(
        :title => "Title",
        :desc => "Desc",
        :avatar => "Avatar"
      )
    ])
  end

  it "renders a list of timelines" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Desc".to_s, :count => 2
    assert_select "tr>td", :text => "Avatar".to_s, :count => 2
  end
end

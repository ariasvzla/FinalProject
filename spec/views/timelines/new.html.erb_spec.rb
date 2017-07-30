require 'rails_helper'

RSpec.describe "timelines/new", type: :view do
  before(:each) do
    assign(:timeline, Timeline.new(
      :title => "MyString",
      :desc => "MyString",
      :avatar => "MyString"
    ))
  end

  it "renders new timeline form" do
    render

    assert_select "form[action=?][method=?]", timelines_path, "post" do

      assert_select "input#timeline_title[name=?]", "timeline[title]"

      assert_select "input#timeline_desc[name=?]", "timeline[desc]"

      assert_select "input#timeline_avatar[name=?]", "timeline[avatar]"
    end
  end
end

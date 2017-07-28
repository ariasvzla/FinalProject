require 'rails_helper'

RSpec.describe "timelines/edit", type: :view do
  before(:each) do
    @timeline = assign(:timeline, Timeline.create!(
      :title => "MyString",
      :desc => "MyString",
      :avatar => "MyString"
    ))
  end

  it "renders the edit timeline form" do
    render

    assert_select "form[action=?][method=?]", timeline_path(@timeline), "post" do

      assert_select "input#timeline_title[name=?]", "timeline[title]"

      assert_select "input#timeline_desc[name=?]", "timeline[desc]"

      assert_select "input#timeline_avatar[name=?]", "timeline[avatar]"
    end
  end
end

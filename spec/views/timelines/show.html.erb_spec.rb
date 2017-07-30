require 'rails_helper'

RSpec.describe "timelines/show", type: :view do
  before(:each) do
    @timeline = assign(:timeline, Timeline.create!(
      :title => "Title",
      :desc => "Desc",
      :avatar => "Avatar"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Desc/)
    expect(rendered).to match(/Avatar/)
  end
end

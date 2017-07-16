require 'rails_helper'

RSpec.describe "rooms/edit", type: :view do
  before(:each) do
    @room = assign(:room, Room.create!(
      :roomtype => "MyString",
      :romnum => 1,
      :pricepn => "9.99"
    ))
  end

  it "renders the edit room form" do
    render

    assert_select "form[action=?][method=?]", room_path(@room), "post" do

      assert_select "input#room_roomtype[name=?]", "room[roomtype]"

      assert_select "input#room_romnum[name=?]", "room[romnum]"

      assert_select "input#room_pricepn[name=?]", "room[pricepn]"
    end
  end
end

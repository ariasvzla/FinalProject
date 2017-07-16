require 'rails_helper'

RSpec.describe "rooms/new", type: :view do
  before(:each) do
    assign(:room, Room.new(
      :roomtype => "MyString",
      :romnum => 1,
      :pricepn => "9.99"
    ))
  end

  it "renders new room form" do
    render

    assert_select "form[action=?][method=?]", rooms_path, "post" do

      assert_select "input#room_roomtype[name=?]", "room[roomtype]"

      assert_select "input#room_romnum[name=?]", "room[romnum]"

      assert_select "input#room_pricepn[name=?]", "room[pricepn]"
    end
  end
end

require 'rails_helper'

RSpec.describe "pieces/new", type: :view do
  before(:each) do
    assign(:piece, Piece.new(
      channel: nil,
      piece_name: nil,
      lot: "MyString",
      weight: 1
    ))
  end

  it "renders new piece form" do
    render

    assert_select "form[action=?][method=?]", pieces_path, "post" do

      assert_select "input[name=?]", "piece[channel_id]"

      assert_select "input[name=?]", "piece[piece_name_id]"

      assert_select "input[name=?]", "piece[lot]"

      assert_select "input[name=?]", "piece[weight]"
    end
  end
end

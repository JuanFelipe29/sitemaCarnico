require 'rails_helper'

RSpec.describe "pieces/edit", type: :view do
  before(:each) do
    @piece = assign(:piece, Piece.create!(
      channel: nil,
      piece_name: nil,
      lot: "MyString",
      weight: 1
    ))
  end

  it "renders the edit piece form" do
    render

    assert_select "form[action=?][method=?]", piece_path(@piece), "post" do

      assert_select "input[name=?]", "piece[channel_id]"

      assert_select "input[name=?]", "piece[piece_name_id]"

      assert_select "input[name=?]", "piece[lot]"

      assert_select "input[name=?]", "piece[weight]"
    end
  end
end

require 'rails_helper'

RSpec.describe "pieces/index", type: :view do
  before(:each) do
    assign(:pieces, [
      Piece.create!(
        channel: nil,
        piece_name: nil,
        lot: "Lot",
        weight: 2
      ),
      Piece.create!(
        channel: nil,
        piece_name: nil,
        lot: "Lot",
        weight: 2
      )
    ])
  end

  it "renders a list of pieces" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Lot".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end

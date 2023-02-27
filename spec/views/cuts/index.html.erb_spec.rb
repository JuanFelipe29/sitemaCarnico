require 'rails_helper'

RSpec.describe "cuts/index", type: :view do
  before(:each) do
    assign(:cuts, [
      Cut.create!(
        piece: nil,
        cut_name: nil,
        maturing: false,
        available: false,
        cut_type: nil
      ),
      Cut.create!(
        piece: nil,
        cut_name: nil,
        maturing: false,
        available: false,
        cut_type: nil
      )
    ])
  end

  it "renders a list of cuts" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end

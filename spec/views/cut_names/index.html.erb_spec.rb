require 'rails_helper'

RSpec.describe "cut_names/index", type: :view do
  before(:each) do
    assign(:cut_names, [
      CutName.create!(
        name: "Name",
        piece: nil
      ),
      CutName.create!(
        name: "Name",
        piece: nil
      )
    ])
  end

  it "renders a list of cut_names" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end

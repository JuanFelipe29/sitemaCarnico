require 'rails_helper'

RSpec.describe "cut_types/index", type: :view do
  before(:each) do
    assign(:cut_types, [
      CutType.create!(
        name: "Name"
      ),
      CutType.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of cut_types" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end

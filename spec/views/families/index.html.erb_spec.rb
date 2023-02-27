require 'rails_helper'

RSpec.describe "families/index", type: :view do
  before(:each) do
    assign(:families, [
      Family.create!(
        name: "Name",
        code: "Code"
      ),
      Family.create!(
        name: "Name",
        code: "Code"
      )
    ])
  end

  it "renders a list of families" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Code".to_s, count: 2
  end
end

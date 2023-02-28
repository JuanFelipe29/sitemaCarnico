require 'rails_helper'

RSpec.describe "histories/index", type: :view do
  before(:each) do
    assign(:histories, [
      History.create!(
        code: "Code",
        client: "Client",
        lot: "Lot",
        item: "Item"
      ),
      History.create!(
        code: "Code",
        client: "Client",
        lot: "Lot",
        item: "Item"
      )
    ])
  end

  it "renders a list of histories" do
    render
    assert_select "tr>td", text: "Code".to_s, count: 2
    assert_select "tr>td", text: "Client".to_s, count: 2
    assert_select "tr>td", text: "Lot".to_s, count: 2
    assert_select "tr>td", text: "Item".to_s, count: 2
  end
end

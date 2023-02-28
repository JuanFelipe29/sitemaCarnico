require 'rails_helper'

RSpec.describe "documents/index", type: :view do
  before(:each) do
    assign(:documents, [
      Document.create!(
        code: "Code",
        client: "Client",
        lot: "Lot",
        item: "Item"
      ),
      Document.create!(
        code: "Code",
        client: "Client",
        lot: "Lot",
        item: "Item"
      )
    ])
  end

  it "renders a list of documents" do
    render
    assert_select "tr>td", text: "Code".to_s, count: 2
    assert_select "tr>td", text: "Client".to_s, count: 2
    assert_select "tr>td", text: "Lot".to_s, count: 2
    assert_select "tr>td", text: "Item".to_s, count: 2
  end
end

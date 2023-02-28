require 'rails_helper'

RSpec.describe "documents/show", type: :view do
  before(:each) do
    @document = assign(:document, Document.create!(
      code: "Code",
      client: "Client",
      lot: "Lot",
      item: "Item"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Client/)
    expect(rendered).to match(/Lot/)
    expect(rendered).to match(/Item/)
  end
end

require 'rails_helper'

RSpec.describe "histories/show", type: :view do
  before(:each) do
    @history = assign(:history, History.create!(
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

require 'rails_helper'

RSpec.describe "cuts/show", type: :view do
  before(:each) do
    @cut = assign(:cut, Cut.create!(
      piece: nil,
      cut_name: nil,
      maturing: false,
      available: false,
      cut_type: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end

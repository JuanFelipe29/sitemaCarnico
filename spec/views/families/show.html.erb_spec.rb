require 'rails_helper'

RSpec.describe "families/show", type: :view do
  before(:each) do
    @family = assign(:family, Family.create!(
      name: "Name",
      code: "Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Code/)
  end
end

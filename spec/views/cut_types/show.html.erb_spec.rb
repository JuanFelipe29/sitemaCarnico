require 'rails_helper'

RSpec.describe "cut_types/show", type: :view do
  before(:each) do
    @cut_type = assign(:cut_type, CutType.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end

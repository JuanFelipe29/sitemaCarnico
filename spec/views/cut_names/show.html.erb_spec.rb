require 'rails_helper'

RSpec.describe "cut_names/show", type: :view do
  before(:each) do
    @cut_name = assign(:cut_name, CutName.create!(
      name: "Name",
      piece: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end

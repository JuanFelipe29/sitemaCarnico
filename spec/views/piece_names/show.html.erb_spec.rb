require 'rails_helper'

RSpec.describe "piece_names/show", type: :view do
  before(:each) do
    @piece_name = assign(:piece_name, PieceName.create!(
      name: "Name",
      family: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end

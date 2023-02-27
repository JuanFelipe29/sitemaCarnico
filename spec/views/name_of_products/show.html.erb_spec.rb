require 'rails_helper'

RSpec.describe "name_of_products/show", type: :view do
  before(:each) do
    @name_of_product = assign(:name_of_product, NameOfProduct.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end

require 'rails_helper'

RSpec.describe "processed_products/show", type: :view do
  before(:each) do
    @processed_product = assign(:processed_product, ProcessedProduct.create!(
      name_of_products: nil,
      product_type: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end

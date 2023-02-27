require 'rails_helper'

RSpec.describe "processed_products/index", type: :view do
  before(:each) do
    assign(:processed_products, [
      ProcessedProduct.create!(
        name_of_products: nil,
        product_type: nil
      ),
      ProcessedProduct.create!(
        name_of_products: nil,
        product_type: nil
      )
    ])
  end

  it "renders a list of processed_products" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end

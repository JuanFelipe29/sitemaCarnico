require 'rails_helper'

RSpec.describe "processed_products/edit", type: :view do
  before(:each) do
    @processed_product = assign(:processed_product, ProcessedProduct.create!(
      name_of_products: nil,
      product_type: nil
    ))
  end

  it "renders the edit processed_product form" do
    render

    assert_select "form[action=?][method=?]", processed_product_path(@processed_product), "post" do

      assert_select "input[name=?]", "processed_product[name_of_products_id]"

      assert_select "input[name=?]", "processed_product[product_type_id]"
    end
  end
end

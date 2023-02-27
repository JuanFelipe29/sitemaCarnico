require 'rails_helper'

RSpec.describe "processed_products/new", type: :view do
  before(:each) do
    assign(:processed_product, ProcessedProduct.new(
      name_of_products: nil,
      product_type: nil
    ))
  end

  it "renders new processed_product form" do
    render

    assert_select "form[action=?][method=?]", processed_products_path, "post" do

      assert_select "input[name=?]", "processed_product[name_of_products_id]"

      assert_select "input[name=?]", "processed_product[product_type_id]"
    end
  end
end

require 'rails_helper'

RSpec.describe "name_of_products/new", type: :view do
  before(:each) do
    assign(:name_of_product, NameOfProduct.new(
      name: "MyString"
    ))
  end

  it "renders new name_of_product form" do
    render

    assert_select "form[action=?][method=?]", name_of_products_path, "post" do

      assert_select "input[name=?]", "name_of_product[name]"
    end
  end
end

require 'rails_helper'

RSpec.describe "name_of_products/edit", type: :view do
  before(:each) do
    @name_of_product = assign(:name_of_product, NameOfProduct.create!(
      name: "MyString"
    ))
  end

  it "renders the edit name_of_product form" do
    render

    assert_select "form[action=?][method=?]", name_of_product_path(@name_of_product), "post" do

      assert_select "input[name=?]", "name_of_product[name]"
    end
  end
end

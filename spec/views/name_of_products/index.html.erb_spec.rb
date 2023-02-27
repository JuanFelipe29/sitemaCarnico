require 'rails_helper'

RSpec.describe "name_of_products/index", type: :view do
  before(:each) do
    assign(:name_of_products, [
      NameOfProduct.create!(
        name: "Name"
      ),
      NameOfProduct.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of name_of_products" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end

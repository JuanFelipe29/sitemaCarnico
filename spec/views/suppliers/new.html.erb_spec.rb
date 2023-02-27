require 'rails_helper'

RSpec.describe "suppliers/new", type: :view do
  before(:each) do
    assign(:supplier, Supplier.new(
      name: "MyString",
      nit: "MyString",
      email: "MyString",
      phone: "MyString"
    ))
  end

  it "renders new supplier form" do
    render

    assert_select "form[action=?][method=?]", suppliers_path, "post" do

      assert_select "input[name=?]", "supplier[name]"

      assert_select "input[name=?]", "supplier[nit]"

      assert_select "input[name=?]", "supplier[email]"

      assert_select "input[name=?]", "supplier[phone]"
    end
  end
end

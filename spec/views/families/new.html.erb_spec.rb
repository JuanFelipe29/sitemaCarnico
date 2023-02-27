require 'rails_helper'

RSpec.describe "families/new", type: :view do
  before(:each) do
    assign(:family, Family.new(
      name: "MyString",
      code: "MyString"
    ))
  end

  it "renders new family form" do
    render

    assert_select "form[action=?][method=?]", families_path, "post" do

      assert_select "input[name=?]", "family[name]"

      assert_select "input[name=?]", "family[code]"
    end
  end
end

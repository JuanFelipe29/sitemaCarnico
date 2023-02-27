require 'rails_helper'

RSpec.describe "cut_types/new", type: :view do
  before(:each) do
    assign(:cut_type, CutType.new(
      name: "MyString"
    ))
  end

  it "renders new cut_type form" do
    render

    assert_select "form[action=?][method=?]", cut_types_path, "post" do

      assert_select "input[name=?]", "cut_type[name]"
    end
  end
end

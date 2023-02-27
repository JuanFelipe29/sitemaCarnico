require 'rails_helper'

RSpec.describe "cut_types/edit", type: :view do
  before(:each) do
    @cut_type = assign(:cut_type, CutType.create!(
      name: "MyString"
    ))
  end

  it "renders the edit cut_type form" do
    render

    assert_select "form[action=?][method=?]", cut_type_path(@cut_type), "post" do

      assert_select "input[name=?]", "cut_type[name]"
    end
  end
end

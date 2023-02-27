require 'rails_helper'

RSpec.describe "cut_names/new", type: :view do
  before(:each) do
    assign(:cut_name, CutName.new(
      name: "MyString",
      piece: nil
    ))
  end

  it "renders new cut_name form" do
    render

    assert_select "form[action=?][method=?]", cut_names_path, "post" do

      assert_select "input[name=?]", "cut_name[name]"

      assert_select "input[name=?]", "cut_name[piece_id]"
    end
  end
end

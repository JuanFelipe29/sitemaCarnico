require 'rails_helper'

RSpec.describe "piece_names/new", type: :view do
  before(:each) do
    assign(:piece_name, PieceName.new(
      name: "MyString",
      family: nil
    ))
  end

  it "renders new piece_name form" do
    render

    assert_select "form[action=?][method=?]", piece_names_path, "post" do

      assert_select "input[name=?]", "piece_name[name]"

      assert_select "input[name=?]", "piece_name[family_id]"
    end
  end
end

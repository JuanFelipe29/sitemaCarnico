require 'rails_helper'

RSpec.describe "cuts/new", type: :view do
  before(:each) do
    assign(:cut, Cut.new(
      piece: nil,
      cut_name: nil,
      maturing: false,
      available: false,
      cut_type: nil
    ))
  end

  it "renders new cut form" do
    render

    assert_select "form[action=?][method=?]", cuts_path, "post" do

      assert_select "input[name=?]", "cut[piece_id]"

      assert_select "input[name=?]", "cut[cut_name_id]"

      assert_select "input[name=?]", "cut[maturing]"

      assert_select "input[name=?]", "cut[available]"

      assert_select "input[name=?]", "cut[cut_type_id]"
    end
  end
end

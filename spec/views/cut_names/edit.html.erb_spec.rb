require 'rails_helper'

RSpec.describe "cut_names/edit", type: :view do
  before(:each) do
    @cut_name = assign(:cut_name, CutName.create!(
      name: "MyString",
      piece: nil
    ))
  end

  it "renders the edit cut_name form" do
    render

    assert_select "form[action=?][method=?]", cut_name_path(@cut_name), "post" do

      assert_select "input[name=?]", "cut_name[name]"

      assert_select "input[name=?]", "cut_name[piece_id]"
    end
  end
end

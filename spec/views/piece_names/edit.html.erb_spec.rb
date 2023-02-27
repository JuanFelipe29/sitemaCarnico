require 'rails_helper'

RSpec.describe "piece_names/edit", type: :view do
  before(:each) do
    @piece_name = assign(:piece_name, PieceName.create!(
      name: "MyString",
      family: nil
    ))
  end

  it "renders the edit piece_name form" do
    render

    assert_select "form[action=?][method=?]", piece_name_path(@piece_name), "post" do

      assert_select "input[name=?]", "piece_name[name]"

      assert_select "input[name=?]", "piece_name[family_id]"
    end
  end
end

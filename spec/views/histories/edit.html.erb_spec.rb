require 'rails_helper'

RSpec.describe "histories/edit", type: :view do
  before(:each) do
    @history = assign(:history, History.create!(
      code: "MyString",
      client: "MyString",
      lot: "MyString",
      item: "MyString"
    ))
  end

  it "renders the edit history form" do
    render

    assert_select "form[action=?][method=?]", history_path(@history), "post" do

      assert_select "input[name=?]", "history[code]"

      assert_select "input[name=?]", "history[client]"

      assert_select "input[name=?]", "history[lot]"

      assert_select "input[name=?]", "history[item]"
    end
  end
end

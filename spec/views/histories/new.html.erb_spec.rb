require 'rails_helper'

RSpec.describe "histories/new", type: :view do
  before(:each) do
    assign(:history, History.new(
      code: "MyString",
      client: "MyString",
      lot: "MyString",
      item: "MyString"
    ))
  end

  it "renders new history form" do
    render

    assert_select "form[action=?][method=?]", histories_path, "post" do

      assert_select "input[name=?]", "history[code]"

      assert_select "input[name=?]", "history[client]"

      assert_select "input[name=?]", "history[lot]"

      assert_select "input[name=?]", "history[item]"
    end
  end
end

require 'rails_helper'

RSpec.describe "documents/new", type: :view do
  before(:each) do
    assign(:document, Document.new(
      code: "MyString",
      client: "MyString",
      lot: "MyString",
      item: "MyString"
    ))
  end

  it "renders new document form" do
    render

    assert_select "form[action=?][method=?]", documents_path, "post" do

      assert_select "input[name=?]", "document[code]"

      assert_select "input[name=?]", "document[client]"

      assert_select "input[name=?]", "document[lot]"

      assert_select "input[name=?]", "document[item]"
    end
  end
end

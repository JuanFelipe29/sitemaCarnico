require 'rails_helper'

RSpec.describe "documents/edit", type: :view do
  before(:each) do
    @document = assign(:document, Document.create!(
      code: "MyString",
      client: "MyString",
      lot: "MyString",
      item: "MyString"
    ))
  end

  it "renders the edit document form" do
    render

    assert_select "form[action=?][method=?]", document_path(@document), "post" do

      assert_select "input[name=?]", "document[code]"

      assert_select "input[name=?]", "document[client]"

      assert_select "input[name=?]", "document[lot]"

      assert_select "input[name=?]", "document[item]"
    end
  end
end

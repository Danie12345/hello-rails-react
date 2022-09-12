require 'rails_helper'

RSpec.describe "api/v1/messages/new", type: :view do
  before(:each) do
    assign(:api/v1_message, Api::V1::Message.new(
      body: "MyText"
    ))
  end

  it "renders new api/v1_message form" do
    render

    assert_select "form[action=?][method=?]", api_v1_messages_path, "post" do

      assert_select "textarea[name=?]", "api/v1_message[body]"
    end
  end
end

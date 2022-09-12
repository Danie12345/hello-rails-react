require 'rails_helper'

RSpec.describe "api/v1/messages/edit", type: :view do
  before(:each) do
    @api/v1_message = assign(:api/v1_message, Api::V1::Message.create!(
      body: "MyText"
    ))
  end

  it "renders the edit api/v1_message form" do
    render

    assert_select "form[action=?][method=?]", api/v1_message_path(@api/v1_message), "post" do

      assert_select "textarea[name=?]", "api/v1_message[body]"
    end
  end
end

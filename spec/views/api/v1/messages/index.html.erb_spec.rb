require 'rails_helper'

RSpec.describe "api/v1/messages/index", type: :view do
  before(:each) do
    assign(:api_v1_messages, [
      Api::V1::Message.create!(
        body: "MyText"
      ),
      Api::V1::Message.create!(
        body: "MyText"
      )
    ])
  end

  it "renders a list of api/v1/messages" do
    render
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end

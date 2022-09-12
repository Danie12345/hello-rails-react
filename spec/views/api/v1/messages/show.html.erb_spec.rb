require 'rails_helper'

RSpec.describe "api/v1/messages/show", type: :view do
  before(:each) do
    @api/v1_message = assign(:api/v1_message, Api::V1::Message.create!(
      body: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end

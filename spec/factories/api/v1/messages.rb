FactoryBot.define do
  factory :api_v1_message, class: 'Api::V1::Message' do
    body { "MyText" }
  end
end

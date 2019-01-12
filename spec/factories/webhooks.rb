FactoryBot.define do
  factory :webhook do
    name { Faker::Name.name }
    url { Faker::Internet.url }
    status { true }
  end
end

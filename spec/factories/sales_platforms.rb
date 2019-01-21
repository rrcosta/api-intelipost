FactoryBot.define do
  factory :sales_platform do
    orderId { 123 }
    status { "In_transit" }
    date { "2019-01-20 14:49:35" }
    status_delivered { false }
  end
end

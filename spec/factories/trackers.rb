FactoryBot.define do
  factory :tracker do
    order_id { 123 }
    event do
      {
        "status_id":1,
		    "date":"2018-02-02T10:45:32"
      }
    end
    package do
      {
        "package_id":1
      }
    end
  end
end

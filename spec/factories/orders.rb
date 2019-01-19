FactoryBot.define do
  factory :order do
    data do 
      {
        'order_id': 123,
        'event': {
          'status_id': 1,
          'date': "2018-02-02T10:45:32"
        },
        'package': {
          'package_id': 1,
          'package_invoice': {
            'number': '9871236',
            'key': '01234567890123456789012345678901234567891234',
            'date': "2018-02-01T10:45:32"
          }
        }
      }
    end
  end
end

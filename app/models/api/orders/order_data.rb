class OrderData
  include Virtus.model

  attribute :order_id, Integer
  attribute :event, Api::Orders::Event
  attribute :package, Api::Orders::Package
end 

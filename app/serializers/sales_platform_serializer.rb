class SalesPlatformSerializer < ActiveModel::Serializer
  attributes :id, :orderId, :status, :date, :status_delivered
end

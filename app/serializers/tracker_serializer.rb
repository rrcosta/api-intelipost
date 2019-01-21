class TrackerSerializer < ActiveModel::Serializer
  attributes :id,
             :order_id,
             event: { :status_id, :date },
             package: { :package_id,
                        package_invoice: { :number, :key, :date }
                      }
end
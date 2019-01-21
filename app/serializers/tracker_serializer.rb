class TrackerSerializer < ActiveModel::Serializer
  attributes :id,
             :order_id,
             event: :event_params,
             package: :package_params

  def event_params
    {
      :status_id,
      :date
    }
  end

  def package_params
    {
      :package_id,
      package_invoice: package_invoice_params
    }
  end

  def package_invoice_params
    {
      :number,
      :key,
      :date
    }
  end
end
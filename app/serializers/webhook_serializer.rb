class WebhookSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :status
end
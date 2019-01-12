class Webhook < ApplicationRecord

  validates :name, :url, presence: true
end

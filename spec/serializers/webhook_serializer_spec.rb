require 'rails_helper'

describe WebhookSerializer do
  let(:webhook) { Webhook.new }

  subject { described_class.new(webhook) }

  describe 'attributes' do
    let(:attributes) { subject.serializable_hash }

    it 'responds to attributes' do
      expect(attributes.keys).to include(
        :id, :name, :url, :status
      )
    end
  end
end
require 'rails_helper'

RSpec.describe Webhook, type: :model do
  
  context 'validations' do
    let(:webhook) { create(:webhook) }

    it 'Is valid with name and url' do
      expect(webhook).to be_valid
    end
  end
  
end

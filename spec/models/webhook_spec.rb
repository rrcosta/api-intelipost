require 'rails_helper'

RSpec.describe Webhook, type: :model do
  
  context 'validations' do
    let(:webhook) { create(:webhook) }

    it 'Is valid with name and url' do
      expect(webhook).to be_valid
    end

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:url) }
  end
  
end

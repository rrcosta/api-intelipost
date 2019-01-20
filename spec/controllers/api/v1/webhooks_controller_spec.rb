require 'rails_helper'

describe Api::V1::WebhooksController, type: :controller do
  let(:webhook) { create(:webhook) }

  describe 'GET index', integration: true do
    it 'redirects correctly on success' do
      get :index
      expect(response.code).to eql('200')
    end
  end

  describe 'GET show', integration: true do
    it 'redirect correctly on success' do
      get :show, params: { id: webhook.id }
      expect(response.code).to eql('200')
    end
  end

  describe 'DELETE destroy', integration: true do
    let(:webhook2) { create(:webhook, name: 'test_web') }

    it 'delete the webhook' do
      delete :destroy, params: { id: webhook2.id }
      expect(response.code).to eql('200')
    end
  end
end
require 'rails_helper'

RSpec.describe WebhooksController, type: :controller do

  let(:webhook) { instance_double(Webhook) }

  describe 'GET new', integration: true do
    it 'redirects correctly on success' do
      get :new
      expect(response.code).to eql('200')
    end
  end

  describe 'GET index', integration: true do
    it 'redirects correctly on sucess' do
      get :index
      expect(response.code).to eql('200')
    end
  end
 
  describe 'POST create', integration: true do
    it 'redirects correctly on sucess with params' do
      post :create, params: {
                      webhook: {
                        name: 'Foo',
                        url: 'http://www.tegma.com.br'
                      }
                    }

      expect(flash[:notice]).to match(/criado com sucesso./)
    end

    it 'on errors ' do
      post :create, format: :json, params: {
                      webhook: {
                        name: nil,
                        url: 'http://www.tegma.com.br'
                      }
                    }

      expect(response.code).to eql('422')
    end
  end

  describe 'PATCH', integration: true do
    let(:webhook) { create(:webhook) }

    it 'redirects correcty on sucess' do
      patch :update, params: {
                      id: webhook.id,
                      webhook: {
                        name: 'Foo',
                        url: 'http://www.tegma.com.br'
                      }
                    }

      expect(flash[:notice]).to match(/Webhook atualizado com sucesso/)
    end

    it 'redirects correctly with empty params' do
      patch :update, params: { id: webhook.id, webhook: { name: '', url: '' } }
    end
  end

  describe 'DELETE destroy', integration: true do
    let(:webhook) { create(:webhook) }

    it 'redirects correctly on success' do
      delete :destroy, params: {
                        id: webhook.id,
                        webhook: {
                          name: 'Foo',
                          url: 'https://sandbox.billimatic.com.br/webhooks/cobrato'
                        }
                      }

      expect(flash[:notice]).to match(/Webhook removido com sucesso/)
    end
  end
end

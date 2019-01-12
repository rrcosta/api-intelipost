require 'rails_helper'

RSpec.describe WebhooksController, type: :controller do

  # let(:valid_attributes) {
  #   skip("Add a hash of attributes valid for your model")
  # }

  # let(:invalid_attributes) {
  #   skip("Add a hash of attributes invalid for your model")
  # }

  # let(:valid_session) { {} }

  # describe "GET #index" do
  #   it "returns a success response" do
  #     Webhook.create! valid_attributes
  #     get :index, params: {}, session: valid_session
  #     expect(response).to be_successful
  #   end
  # end

  # describe "GET #show" do
  #   it "returns a success response" do
  #     webhook = Webhook.create! valid_attributes
  #     get :show, params: {id: webhook.to_param}, session: valid_session
  #     expect(response).to be_successful
  #   end
  # end

  # describe "GET #new" do
  #   it "returns a success response" do
  #     get :new, params: {}, session: valid_session
  #     expect(response).to be_successful
  #   end
  # end

  # describe "GET #edit" do
  #   it "returns a success response" do
  #     webhook = Webhook.create! valid_attributes
  #     get :edit, params: {id: webhook.to_param}, session: valid_session
  #     expect(response).to be_successful
  #   end
  # end

  # describe "POST #create" do
  #   context "with valid params" do
  #     it "creates a new Webhook" do
  #       expect {
  #         post :create, params: {webhook: valid_attributes}, session: valid_session
  #       }.to change(Webhook, :count).by(1)
  #     end

  #     it "redirects to the created webhook" do
  #       post :create, params: {webhook: valid_attributes}, session: valid_session
  #       expect(response).to redirect_to(Webhook.last)
  #     end
  #   end

  #   context "with invalid params" do
  #     it "returns a success response (i.e. to display the 'new' template)" do
  #       post :create, params: {webhook: invalid_attributes}, session: valid_session
  #       expect(response).to be_successful
  #     end
  #   end
  # end

  # describe "PUT #update" do
  #   context "with valid params" do
  #     let(:new_attributes) {
  #       skip("Add a hash of attributes valid for your model")
  #     }

  #     it "updates the requested webhook" do
  #       webhook = Webhook.create! valid_attributes
  #       put :update, params: {id: webhook.to_param, webhook: new_attributes}, session: valid_session
  #       webhook.reload
  #       skip("Add assertions for updated state")
  #     end

  #     it "redirects to the webhook" do
  #       webhook = Webhook.create! valid_attributes
  #       put :update, params: {id: webhook.to_param, webhook: valid_attributes}, session: valid_session
  #       expect(response).to redirect_to(webhook)
  #     end
  #   end

  #   context "with invalid params" do
  #     it "returns a success response (i.e. to display the 'edit' template)" do
  #       webhook = Webhook.create! valid_attributes
  #       put :update, params: {id: webhook.to_param, webhook: invalid_attributes}, session: valid_session
  #       expect(response).to be_successful
  #     end
  #   end
  # end

  # describe "DELETE #destroy" do
  #   it "destroys the requested webhook" do
  #     webhook = Webhook.create! valid_attributes
  #     expect {
  #       delete :destroy, params: {id: webhook.to_param}, session: valid_session
  #     }.to change(Webhook, :count).by(-1)
  #   end

  #   it "redirects to the webhooks list" do
  #     webhook = Webhook.create! valid_attributes
  #     delete :destroy, params: {id: webhook.to_param}, session: valid_session
  #     expect(response).to redirect_to(webhooks_url)
  #   end
  # end

end

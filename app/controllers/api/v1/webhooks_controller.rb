module Api
  module V1
    class WebhooksController < Api::ApplicationController
      before_action :set_webhook, only: [:show, :edit, :update, :destroy]

      def index
        @webhook = Webhook.order('created_at DESC')
        render json: { status: 'SUCCESS', message: 'webhooks carregados', data: @webhook}, status: :ok
      end

      def show
        return render json: { errors: @webhook.errors  }, status: :unprocessable_entity unless @webhook

        render json: { status: 'SUCCESS', message: 'webhooks carregados', data: @webhook}, status: :ok
      end

      def destroy
        return render json: { data: @webhook.errors }, status: :unprocessable_entity unless @webhook

        render head :no_content, status: :ok
      end

      private
      
      def set_webhook
        @webhook = Webhook.find(params[:id])
      end

    end
  end
end
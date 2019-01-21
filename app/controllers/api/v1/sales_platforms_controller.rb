module Api
  module V1
    class SalesPlatformsController < Api::ApplicationController
      def index
        @sales_platforms = SalesPlatform.all
        render json: @sales_platforms, status: :ok
      end
    end
  end
end
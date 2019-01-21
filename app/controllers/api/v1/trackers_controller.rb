module Api
  module V1
    class TrackersController < Api::ApplicationController

      def create
        @tracker = Tracker.new(tracker_params)
        render json: { @tracker status: :created, location: @tracker}
      end

      private

      def event_params
        {
          :status_id,
          :date
        }
      end

      def package_params
        {
          :package_id,
          package_invoice: package_invoice_params
        }
      end

      def package_invoice_params
        {
          :number,
          :key,
          :date
        }
      end

      def tracker_params
        params.require(:tracker).permit(
             :order_id,
             event: event_params,
             package: package_params
        )
      end
    end
  end
end
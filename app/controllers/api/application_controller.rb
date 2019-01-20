module Api
  class ApplicationController < ActionController::Base

    def success_json_response(body, status: :ok)
      render json: body, status: status
    end

    def failure_json_response(body, status: :unprocessable_entity)
      render json: { errors: body }, status: status
    end
  end
end
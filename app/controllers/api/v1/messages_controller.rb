module Api
  module V1
    class MessagesController < ApplicationController
      def index
        @api_v1_message = random_message
        render json: @api_v1_message
      end
    end
  end
end

class Api::V1::MessagesController < ApplicationController
  
  def index
    @api_v1_message = random_message
    render json: @api_v1_message
  end
end

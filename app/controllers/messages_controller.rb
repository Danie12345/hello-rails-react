class MessagesController < ApplicationController
  def index
    @message = random_message

    render @message
  end
end

class MessagesController < ApplicationController
  def index
    @message = random_message
  end
end

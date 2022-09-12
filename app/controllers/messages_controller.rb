class MessagesController < ApplicationController
  def show
    @message = random_message

    respond_to do |format|
      format.html { render root_path }
      format.json { render json: @message }
    end
  end

  private

  def random_message
    Message.all.sample(1)
  end
end

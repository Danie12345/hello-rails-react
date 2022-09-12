class ApplicationController < ActionController::Base

  private

  def random_message
    Message.all.sample(1)[0]
  end
end

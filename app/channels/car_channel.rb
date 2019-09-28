class CarChannel < ApplicationCable::Channel
  def subscribed
    stream_from "car"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

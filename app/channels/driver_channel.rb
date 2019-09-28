class DriverChannel < ApplicationCable::Channel
  def subscribed
    stream_from "driver"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

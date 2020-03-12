class DiscussionChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'discussion_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def chat(message)
    ActionCable.server.broadcast "discussion_channel", message: message
  end
end

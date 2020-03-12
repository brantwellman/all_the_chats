class DiscussionChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'discussion_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def chat(message)
    message = Message.create(text: message['text'], user_id: message['user_id'])
    message_partial = ApplicationController.renderer.render(partial: 'messages/message', locals: { message: message })
    ActionCable.server.broadcast "discussion_channel", message: message_partial
  end
end

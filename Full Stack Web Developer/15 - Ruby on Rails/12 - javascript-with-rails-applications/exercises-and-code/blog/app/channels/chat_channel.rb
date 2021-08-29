# File: app/channels/chat_channel.rb
#
class ChatChannel < ApplicationCable::Channel
  def subscribed
    super
    stream_from 'chat', coder: ActiveSupport::JSON do |message|
      if message['connection_identifier'] == connection.connection_identifier
        message['message'] = "You: #{message['message']}"
      else
        message['message'] = "Other: #{message['message']}"
      end
      transmit message
    end
  end

  def receive(data)
    ActionCable.server.broadcast('chat', data.merge({connection_identifier: connection.connection_identifier}))
  end
end

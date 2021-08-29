# File: app/channels/application_cable/channel.rb
#
module ApplicationCable
  class Channel < ActionCable::Channel::Base
    def subscribed
      logger.info "A new subscription has been accepted: #{self.connection.connection_identifier}"
    end
  end
end

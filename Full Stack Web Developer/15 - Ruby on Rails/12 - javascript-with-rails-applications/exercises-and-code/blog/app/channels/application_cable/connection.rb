# File: app/channels/application_cable/connection.rb
#
module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :connection_token

    def connect
      self.connection_token = SecureRandom.urlsafe_base64(36)
      logger.add_tags connection_token
      logger.info "A new connection has been requested: #{self.connection_identifier}"
    end
  end
end

# File: encryption-3.rb
#
require 'digest'

module Encryption
  module InstanceMethods
    def encrypt
      Digest::SHA256.base64digest message_to_encrypt
    end
  end
end

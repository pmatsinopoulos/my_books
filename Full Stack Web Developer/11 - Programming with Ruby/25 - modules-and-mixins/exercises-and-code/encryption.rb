# File: encryption.rb
#
require 'digest'

module Encryption
  def encrypt
    Digest::SHA256.base64digest message_to_encrypt
  end
end

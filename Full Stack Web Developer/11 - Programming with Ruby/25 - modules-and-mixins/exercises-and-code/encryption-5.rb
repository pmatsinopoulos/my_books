# File: encryption-5.rb
#
require 'digest'

module Encryption
  module InstanceMethods
    def encrypt
      Digest::SHA256.base64digest message_to_encrypt
    end
  end

  def self.included(base)
    base.include InstanceMethods
  end
end

# File: encryption-8.rb
#
require 'digest'

module Encryption
  module InstanceMethods
    def encrypt
      self.class.encrypt message_to_encrypt
    end
  end

  module ClassMethods
    def encrypt(clear_text)
      Digest::SHA256.base64digest clear_text
    end
  end

  def self.included(base)
    base.include Encryption::InstanceMethods
  end

  def self.extended(base)
    base.extend Encryption::ClassMethods
  end
end

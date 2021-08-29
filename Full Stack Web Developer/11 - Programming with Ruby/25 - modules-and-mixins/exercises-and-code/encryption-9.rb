# File: encryption-9.rb
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
    reuse_module(base)
  end

  def self.extended(base)
    reuse_module(base)
  end

  def self.reuse_module(base)
    base.include InstanceMethods
    base.extend ClassMethods
  end
end

# File: encryption-6.rb
#
require 'digest'

module Encryption
  module ClassMethods
    def encrypt(clear_text)
      Digest::SHA256.base64digest clear_text
    end
  end

  def self.extended(base)
    base.extend Encryption::ClassMethods
  end
end

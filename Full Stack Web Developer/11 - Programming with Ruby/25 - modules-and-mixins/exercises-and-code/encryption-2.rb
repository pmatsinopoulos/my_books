# File: encryption-2.rb
#
require 'digest'

module Encryption
  def encrypt(clear_text)
    Digest::SHA256.base64digest clear_text
  end
end

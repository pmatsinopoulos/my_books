# File base64_encoder.rb
#
require 'base64'
require 'drb/drb'

class Base64Encoder
  include DRb::DRbUndumped

  def encode(input)
    Base64.strict_encode64(input)
  end

  def decode(input)
    Base64.strict_decode64(input)
  end
end

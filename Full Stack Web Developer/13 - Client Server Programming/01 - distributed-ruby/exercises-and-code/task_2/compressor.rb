# File: compressor.rb
#
require 'zlib'
require 'drb/drb'

class Compressor
  include DRb::DRbUndumped

  def compress(input)
    Zlib::Deflate.deflate(input)
  end

  def uncompress(input)
    Zlib::Inflate.inflate(input)
  end
end

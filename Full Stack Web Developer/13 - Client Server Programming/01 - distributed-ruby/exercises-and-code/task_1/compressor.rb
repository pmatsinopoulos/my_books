# File: compressor.rb
#
require 'zlib'

class Compressor
  def compress(input)
    Zlib::Deflate.deflate(input)
  end

  def uncompress(input)
    Zlib::Inflate.inflate(input)
  end
end

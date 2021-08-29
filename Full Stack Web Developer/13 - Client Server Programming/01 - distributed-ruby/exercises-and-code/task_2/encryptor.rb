# File: encryptor.rb
#
require 'drb/drb'

class Encryptor
  include DRb::DRbUndumped

  def encrypt (input)
    input.chars.map {|c| (c.ord + 1).chr }.join
  end

  def decrypt(input)
    input.chars.map { |c| (c.ord - 1).chr }.join
  end
end


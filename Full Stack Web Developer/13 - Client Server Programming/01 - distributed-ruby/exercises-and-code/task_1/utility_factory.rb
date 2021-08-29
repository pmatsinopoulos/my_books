# File: utility_factory.rb
#
require_relative 'base64_encoder'
require_relative 'compressor'
require_relative 'encryptor'

class UtilityFactory
  def build(factory_name)
    case factory_name
      when 'base64'
        @base64_encoder ||= Base64Encoder.new
      when 'compressor'
        @compressor ||= Compressor.new
      when 'encryptor'
        @encryptor ||= Encryptor.new
      else
        raise ArgumentError, "invalid factory name: #{factory_name}"
    end
  end
end

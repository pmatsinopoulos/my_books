# File: client.rb
#
require 'drb/drb'

word_at_hand = ARGV[0]

puts "Initial string is: #{word_at_hand}"

utility_factory = DRbObject.new_with_uri('druby://localhost:8787')

# encryptor
encryptor = utility_factory.build('encryptor')

encrypted = encryptor.encrypt(word_at_hand)
puts "Encrypted: #{encrypted}"

puts "Decrypted: #{encryptor.decrypt(encrypted)}"

# base64

base64_encoder = utility_factory.build('base64')

encoded = base64_encoder.encode(word_at_hand)

puts "Base64 encoded: #{encoded}"

puts "Base64 decoded: #{base64_encoder.decode(encoded)}"

# compressor

compressor = utility_factory.build('compressor')

compressed = compressor.compress(word_at_hand)

puts "Compressed: #{compressed}"

puts "Uncompressed: #{compressor.uncompress(compressed)}"

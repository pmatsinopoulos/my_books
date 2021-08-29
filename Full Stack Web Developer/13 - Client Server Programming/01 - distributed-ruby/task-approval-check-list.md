### Task A

Your student needs to implement the task as required above. Here is a sample implementation:

``` ruby
# File: client.rb
#
require 'drb/drb'
require_relative 'base64_encoder'
require_relative 'compressor'
require_relative 'encryptor'

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

puts "Compressed Size: #{compressed.size}"

puts "Uncompressed Size: #{compressor.uncompress(compressed).size}"
```

``` ruby
# File base64_encoder.rb
#
require 'base64'

class Base64Encoder
  def encode(input)
    Base64.strict_encode64(input)
  end

  def decode(input)
    Base64.strict_decode64(input)
  end
end
```

``` ruby
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
```

``` ruby
# File: encryptor.rb
#
class Encryptor
  def encrypt (input)
    input.chars.map { |c| (c.ord + 1).chr }.join
  end

  def decrypt(input)
    input.chars.map { |c| (c.ord - 1).chr }.join
  end
end
```

``` ruby
# File: server.rb
#
require 'drb/drb'
require_relative 'utility_factory'

$SAFE = 1

DRb.start_service('druby://localhost:8787', UtilityFactory.new)

DRb.thread.join
```

``` ruby
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
```

Your student needs to upload their implementation in their Github account.

### Task B

Your student needs to implement the task B as per the requirements. This is a sample implementation:

``` ruby
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
```

``` ruby
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
```

``` ruby
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
```

``` ruby
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
```

``` ruby
# File: server.rb
#
require 'drb/drb'
require_relative 'utility_factory'

$SAFE = 1

DRb.start_service('druby://localhost:8787', UtilityFactory.new)

DRb.thread.join
```

``` ruby
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
```

Your student needs to upload their implementation in their Github account.

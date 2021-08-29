# File: password-10.rb
#
require_relative 'encryption-9'

class Password
  include Encryption

  def initialize(clear_text_password)
    @clear_text_password = clear_text_password
  end

  def get
    encrypt
  end

  private(:encrypt)

  private

  def message_to_encrypt
    @clear_text_password
  end
end

password = Password.new('foo-bar')
puts password.get

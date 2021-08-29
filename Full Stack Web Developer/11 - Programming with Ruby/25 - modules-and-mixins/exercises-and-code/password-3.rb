# File: password-3.rb
#
require_relative 'encryption-3'

class Password
  include Encryption::InstanceMethods

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

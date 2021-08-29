# File: password-2.rb
#
require_relative 'encryption-2'

class Password
  extend Encryption

  def initialize(clear_text_password)
    @clear_text_password = clear_text_password
  end

  def get
    Password.encrypt(@clear_text_password)
  end
end

password = Password.new('foo-bar')
puts password.get

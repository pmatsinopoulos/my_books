# File: password-7.rb
#
require_relative 'encryption-8'

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

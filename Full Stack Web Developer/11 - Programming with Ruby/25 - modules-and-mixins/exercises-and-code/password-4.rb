# File: password-4.rb
#
require_relative 'encryption-4'

class Password
  extend Encryption::ClassMethods

  def initialize(clear_text_password)
    @clear_text_password = clear_text_password
  end

  def get
    Password.encrypt(@clear_text_password)
  end
end

password = Password.new('foo-bar')
puts password.get

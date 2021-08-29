# File: visibility-3.rb
#
class User
  attr_accessor :name, :email
end

class UserCreationService
  def initialize(user)
    @user = user
  end

  def create
    create_on_ldap_db
    send_creation_email
  end

  private

  def create_on_ldap_db
    # ...
  end

  def send_creation_email
    # ...
  end
end

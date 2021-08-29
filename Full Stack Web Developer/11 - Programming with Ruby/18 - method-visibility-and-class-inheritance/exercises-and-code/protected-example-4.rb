# File: protected-example-4.rb
#
class MyClass
  def public_foo
    puts 'public foo'
  end

  protected

  def protected_foo
    puts 'protected_foo'
  end
end

a = MyClass.new
a.public_foo
a.protected_foo

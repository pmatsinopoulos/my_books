# File: send-example.rb
#
class MyClass
  def public_foo
    puts 'public foo'
  end

  private

  def private_foo
    puts 'private_foo'
  end

  protected

  def hello(name)
    puts "(protected) Hello #{name}"
  end
end

a = MyClass.new
a.public_foo
a.send :private_foo
a.send :hello, 'John'


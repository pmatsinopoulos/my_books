# File: protected-example-1.rb
#
class MyClass
  def public_foo
    puts 'public foo'
  end

  private

  def private_foo
    puts 'private_foo'
  end
end

a = MyClass.new
a.public_foo
a.private_foo

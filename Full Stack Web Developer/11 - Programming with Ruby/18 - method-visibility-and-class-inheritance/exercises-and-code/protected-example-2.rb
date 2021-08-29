# File: protected-example-2.rb
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

class MySubClass < MyClass
  def public_sub_class_foo
    a = MyClass.new
    a.public_foo
    a.private_foo
  end
end

aa = MySubClass.new
aa.public_sub_class_foo

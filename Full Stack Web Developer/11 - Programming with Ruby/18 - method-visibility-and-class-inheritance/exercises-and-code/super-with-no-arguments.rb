# File: super-with-no-arguments.rb
#
class MyClass
  def foo
    'Hello'
  end
end

class MySubClass < MyClass
  def foo(name)
    "#{super()} #{name}"
  end
end

my_sub_class = MySubClass.new
puts my_sub_class.foo('John')

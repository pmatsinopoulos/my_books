# File: super-with-arguments.rb
#
class MyClass
  def foo(first_name, last_name)
    "Hello #{first_name} #{last_name}"
  end
end

class MySubClass < MyClass
  def foo(name)
    first_name, last_name = name.split
    "#{super(first_name, last_name)}"
  end
end

my_sub_class = MySubClass.new
puts my_sub_class.foo('John Smith')

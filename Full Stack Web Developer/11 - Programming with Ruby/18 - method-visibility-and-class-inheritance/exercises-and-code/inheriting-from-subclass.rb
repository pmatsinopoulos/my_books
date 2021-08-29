# File: inheriting-from-subclass.rb
#
class Parent
end

class Child < Parent
end

class GrandChild < Child
end

parent = Parent.new
child = Child.new
grand_child = GrandChild.new

[parent, child, grand_child].each do |instance|
  puts "Information about #{instance.class} instance: "
  puts "...class: #{instance.class}"
  puts "...superclass: #{instance.class.superclass}"
  puts "...is_a?(Parent): #{instance.is_a?(Parent)}"
  puts "...is_a?(Child): #{instance.is_a?(Child)}"
  puts "...is_a?(GrandChild): #{instance.is_a?(GrandChild)}"
  puts "..."
  puts "...kind_of?(Parent): #{instance.kind_of?(Parent)}"
  puts "...kind_of?(Child): #{instance.kind_of?(Child)}"
  puts "...kind_of?(GrandChild): #{instance.kind_of?(GrandChild)}"
  puts "..."
  puts "...instance_of?(Parent): #{instance.instance_of?(Parent)}"
  puts "...instance_of?(Child): #{instance.instance_of?(Child)}"
  puts "...instance_of?(GrandChild): #{instance.instance_of?(GrandChild)}"
end


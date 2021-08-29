class MyClass
end

obj = MyClass.new

puts "obj instance of Object? #{obj.instance_of?(Object)}"
puts "obj instance of MyClass? #{obj.instance_of?(MyClass)}"
puts "obj is a? MyClass: #{obj.is_a?(MyClass)}"
puts "obj is a? Object: #{obj.is_a?(Object)}"

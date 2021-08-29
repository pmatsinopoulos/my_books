### Question #2 - Which lines will raise error?
``` ruby
 1. class Animal
 2.   protected
 3.   
 4.   def loud_bark
 5.   end
 6. end
 7. 
 8. class Pet < Animal
 9.   def bark
10.     animal = Animal.new
11.     animal.loud_bark
12.   end
13. end
14. 
15. pet = Pet.new
16. pet.bark
17. 
18. animal = Animal.new
19. animal.loud_bark 
```

*Multiple Choice*

1. 11
2. 16
3. 19
4. 11 and 19

### Question #6 - Which is the output of this program?
``` ruby
class MyClass
  def foo
    puts "#{self.class} foo"
  end  
end

class MySubClass < MyClass
  def foo
    puts "foo"
  end
end

MySubClass.new.foo
```

*Multiple Choice*

1. Nothing the program has an error
2. `foo`
3. `MyClass foo`
4. `MySubClass foo`

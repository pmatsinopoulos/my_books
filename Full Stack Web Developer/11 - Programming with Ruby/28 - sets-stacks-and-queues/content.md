## Sets

We have worked with the `Array` class quite a lot in the previous chapters. Ruby standard library offers another very interesting
structure, the `Set`. `Set` is more useful than the `Array` when you want the elements in the collection to be unique. `Set` makes
sure that the elements are only stored once in the collection.

## Implementing a Simply Linked List Using a `Set`

We are going to study the `Set` structure using an example. That of a Simply Linked List. Our list interface will be 
the same like the one we had in chapter "Linked Lists". But, the implementation will be different.

## Addition and List of Elements

Initially, we will implement the simply client that adds some elements in the list and then prints the contents of the list. Here it is (`main.rb`):

``` ruby
 1. # File: main.rb
 2. #
 3. require_relative 'linked_list'
 4. require_relative 'customer'
 5. 
 6. customers = LinkedList.new
 7. 
 8. ['John Smith', 'George Papas', 'Peter Pan'].each do |customer_name|
 9.   customers.add(Customer.new(customer_name))
10. end
11. 
12. puts "List of Customers:"
13. puts customers
```

The file initially requires the `linked_list` implementation and the `customer` implementation (lines 3 and 4). Then it instantiates the
linked list (line 6) and then it adds three customers in the list (lines 8 till 10). Finally, it prints the contents of the list
with the `puts customers` statement.

Let's see the implementation of the linked list now. As we said earlier, we are going to implement the linked list with the help of the
`Set` standard Ruby class.

``` ruby
 1. # File: linked_list.rb
 2. #
 3. require 'set'
 4. 
 5. class LinkedList
 6.   def initialize
 7.     @set = Set.new
 8.   end
 9. 
10.   def add(item)
11.     @set.add(item)
12.   end
13. 
14.   def to_s
15.     @set.to_a.join("\n")
16.   end
17. end
```

The implementation is very simple. 

1. Firstly, we need to require the `set`. This is because it is part of the standard Ruby library, the files of which
are not automatically required. This is done on line 3.
2. When initializing the `LinkedList`, we internally initialize a new `Set` with the `@set = Set.new` command. Most of the
functionality will be delegated to the `@set` instance variable. 
3. The `LinkedList#add` instance method is delegated to the `@set` instance variable. 
4. We implement the `LinkedList#to_s` method in order to be able to call things like `puts <linked_list_instance>` without
explicitly converting the linked list instance to a string representation. The implementation of `LinkedList#to_s` calls the
`Set#to_a` to convert the `@set` instance to an `Array` instance and then calls `Array#join` to concatenate the elements
into a long string with new lines (`\n`) in between.

The customer implementation:

``` ruby
 1. # File: customer.rb
 2. #
 3. class Customer
 4.   def initialize(name)
 5.     @name = name
 6.   end
 7. 
 8.   def to_s
 9.     @name
10.   end
11. end
```

The `Customer` implementation is very simple. It has the `@name` instance variable that is set on the initializer. Also, it
implements the `#to_s` method that returns the value of `@name`. Hence, we will have an informative string representation of
a `Customer` instance.

Having all these three files (`main.rb`, `customer.rb` and `linked_list.rb`) we can now run the `main.rb` file:

``` bash
$ ruby main.rb
List of Customers:
John Smith
George Papas
Peter Pan
$
```

Cool! The program has run successfully. Each customer has been added at the end of the list. Then we have printed the contents of the list.

## No Need for `LinkedListItem` Type

If you have studied the chapter "Linked Lists", you now remember that we have used an extra class, called `LinkedListItem`. That class
was used to wrap every instance added to the list. That made the `LinkedList` implementation being able to work with any class items
and the class items didn't have to respond to methods like `#next` or `#previous`. 

With the `Set` structure used for the `LinkedList` implementation, this class, `LinkedListItem`, is no longer needed, because the `Set`
itself is already designed to work with any kind of items. This is the advantage of using Ruby standard structures, like `Array`, `Hash` or `Set`,
when implementing custom collection classes.

## Ensure Uniqueness

We have said that `Set` makes sure that an element exists in the collection only once. That is very convenient for our `LinkedList` of customers
because we wouldn't like to store the same customer twice. The method `LinkedList#add` delegates to `Set#add` which makes sure that if the given
customer already exists, it is not added to the set.

Let's try to add the same customer twice. What will happen? (`main-2.rb`)

``` ruby
 1. # File: main-2.rb
 2. #
 3. require_relative 'linked_list'
 4. require_relative 'customer'
 5. 
 6. customers = LinkedList.new
 7. 
 8. ['John Smith', 'George Papas', 'Peter Pan', 'George Papas'].each do |customer_name|
 9.   customers.add(Customer.new(customer_name))
10. end
11. 
12. puts "List of Customers:"
13. puts customers
```

You can see that on line 8, we have added one more customer name, which is equal to the 2nd one. Will that be
added twice to the list? We are supposed to be using the `Set` structure in order to avoid adding duplicate customers.

Let's run the program:

``` bash
$ ruby main-2.rb
List of Customers:
John Smith
George Papas
Peter Pan
George Papas
$
```

Hmmm! It seems that things didn't work exactly as we wanted. `George Papas` is now twice in our list of customers. What
might have gone wrong?

It is the fact that our list implementation, although it uses `Set`s, it has not been told when two items should be considered
equal. So, it relies on comparing object ids, instead of object values. 

> *Note:* If you don't understand the concept of object equality in Ruby, you will need to study the chapter "Everything is an Object"

Let's fix that situation by telling our `@set`, when two items, i.e. customers, are equal. Note that `Set` uses `Hash` internally
for storage of its items. Hence, we need to make sure that `#eql?` and `#hash` methods on the `Customer` class return appropriate
values in order to consider two `Customer` instances both equal and with same hash keys.

Here is the new `Customer` implementation:

``` ruby
 1. # File: customer.rb
 2. #
 3. class Customer
 4.   attr_reader :name
 5. 
 6.   def initialize(name)
 7.     @name = name
 8.   end
 9. 
10.   def to_s
11.     @name
12.   end
13.   
14.   def ==(other)
15.     @name == other.name
16.   end
17.   
18.   alias eql? ==
19.   
20.   def hash
21.     @name.hash
22.   end
23. end
```

We have added the attribute reader for `@name` and the implementations for `#==` and `#hash`. We have also aliased `#eql?` to `#==`. The above are enough
to make sure that `Customer` instances can be compared on the value of their `@name` attribute and that they can be compared as hash keys too.

Let's run the program `main-2.rb` again:

``` bash
$ ruby main-2.rb
List of Customers:
John Smith
George Papas
Peter Pan
$
```

Bingo! `George Papas` has only been added once.

## Delegation Parenthesis

Before we continue with the rest of the core content of the chapter, let's have a parenthesis and discuss a little bit about delegation.
Ruby has many elegant ways to explicitly tell that an object behaviour wouldn't be actually implemented by the object itself, but it would
be delegated to another object.

We have seen some examples of methods that delegate their implementation to another object. Look for example 

``` ruby
def hash
  @name.hash
end
```

from the `Customer` object, delegates the implementation to the `@name` `String` object. In other words, the implementation
of a method does not actually do anything other than calling another method to another object.

One way you can achieve delegation functionality in Ruby is with `Forwardable` module. Here is how we use `Forwardable` for
`Customer` class for the method `#hash`:

``` ruby
 1. # File: customer.rb
 2. #
 3. require 'forwardable'
 4. 
 5. class Customer
 6.   attr_reader :name
 7. 
 8.   extend Forwardable
 9. 
10.   def_delegators :@name, :hash
11. 
12.   def initialize(name)
13.     @name = name
14.   end
15. 
16.   def to_s
17.     @name
18.   end
19. 
20.   def ==(other)
21.     @name == other.name
22.   end
23. 
24.   alias eql? ==
25. end
```

As you can see, now, there is no `#hash` implementation defined inside the `Customer` class. On the other hand,
we have the statement `extend Forwardable` which makes `Forwardable` methods to be available as class methods
for the `class` `Customer`. Having done that, then we can call the method `def_delegators` on line 10.
This method takes two or more arguments. The first argument is a symbol version of the object that will 
receive the delegated call. The next arguments define which methods are delegated.

Hence `def_delegators :@name, :hash` defines that method `#hash`, when called to `Customer` instances, will
be actually forwarded to `@name` object.

If you run the program `main-2.rb` again, you will see that it will run without problem as before:

``` bash
$ ruby main-2.rb
List of Customers:
John Smith
George Papas
Peter Pan
$
```

Another delegation that we can use is for the method `#add` on the `LinkedList`. This can be forwarded to the `@set` 
object. Here is the new version of `LinkedList` that uses the `Forwardable`:

``` ruby
 1. # File: linked_list.rb
 2. #
 3. require 'set'
 4. require 'forwardable'
 5. 
 6. class LinkedList
 7.   extend Forwardable
 8. 
 9.   def_delegators :@set, :add
10. 
11.   def initialize
12.     @set = Set.new
13.   end
14. 
15.   def to_s
16.     @set.to_a.join("\n")
17.   end
18. end
```

Now, we don't have a `LinkedList#add` implementation. We delegate any call of such method to the `@set` instance.
 
Try to run the `main-2.rb` program again. Everything will run without problem.
 
> *Read More* about [Forwardable here](http://ruby-doc.org/stdlib-2.3.0/libdoc/forwardable/rdoc/Forwardable.html).
 
## Removing From Set
 
We have seen how we can add items to the list. Let's see how we can remove items from the list, using `Set` facilities.
There is a method called `#delete` that can be used to delete an item from a `Set`. Let's use it to implement the `#remove` method
on the `LinkedList`:

``` ruby
 1. # File: linked_list.rb
 2. #
 3. require 'set'
 4. require 'forwardable'
 5. 
 6. class LinkedList
 7.   extend Forwardable
 8. 
 9.   def_delegators :@set, :add
10. 
11.   def initialize
12.     @set = Set.new
13.   end
14. 
15.   def to_s
16.     @set.to_a.join("\n")
17.   end
18. 
19.   def remove(matching_item)
20.     @set.delete(matching_item)
21.   end
22. end
```

You can see how we have added the definition of the method `#remove` on lines 19 to 21. `#remove` is actually calling `#delete` on the `@set` object.

Let's change our main program to remove customers too:

``` ruby
 1. # File: main-3.rb
 2. #
 3. require_relative 'linked_list'
 4. require_relative 'customer'
 5. 
 6. customers = LinkedList.new
 7. 
 8. ['John Smith', 'George Papas', 'Peter Pan', 'George Papas'].each do |customer_name|
 9.   customers.add(Customer.new(customer_name))
10. end
11. 
12. puts "List of Customers:"
13. puts customers
14. 
15. # Remove 2nd and then 1st customer:
16. ['George Papas', 'John Smith'].each do |customer_name_to_remove|
17.   item_to_remove = Customer.new(customer_name_to_remove)
18. 
19.   puts "About to remove #{item_to_remove}"
20. 
21.   customers.remove(item_to_remove)
22. 
23.   puts "List of Customers:"
24.   puts customers
25. end
```

If you run the above program, it will print this:

``` bash
$ ruby main-3.rb
List of Customers:
John Smith
George Papas
Peter Pan
About to remove George Papas
List of Customers:
John Smith
Peter Pan
About to remove John Smith
List of Customers:
Peter Pan
$
```

which proves that the `#remove` implementation worked without problem.

But, if we look carefully at the implementation of the `#remove` method, 

``` ruby
19.   def remove(matching_item)
20.     @set.delete(matching_item)
21.   end
```

we can see that `#remove` does not actually have any implementation logic other than asking the object `@set` to do the
job. So, this is a delegation, like before. The only difference here is that the delegating method (`#remove`) has different 
name from the delegated-to method (`#delete`). But, still, it is an example of a delegation.

This can be addressed with the `Forwardable` module. But instead of using the `def_delegators`, we use the `def_delegator` 
method. Here is the `LinkedList` implementation with the `#remove` being delegated to `@set.delete` method:

``` ruby
 1. # File: linked_list.rb
 2. #
 3. require 'set'
 4. require 'forwardable'
 5. 
 6. class LinkedList
 7.   extend Forwardable
 8. 
 9.   def_delegators :@set, :add
10.   def_delegator :@set, :delete, :remove
11. 
12.   def initialize
13.     @set = Set.new
14.   end
15. 
16.   def to_s
17.     @set.to_a.join("\n")
18.   end
19. end
```

As you can see above, we have removed the implementation of `:remove` and we now specify that every call to `LinkedList#remove` will be
actually forwarded to `@set.delete`. See the line 10: `def_delegator :@set, :delete, :remove`. 

Again, `def_delegator` is to forward only one method that has different name from the forwarded-to method. Whereas, `def_delegators` is
used to forward one or more methods that have same name like the forwarded-to methods.

If you run the program `main-3.rb` it will not have any problem and will print the same output as before.

## Iterating Over the List Items
 
We have seen how to add and remove elements from the list. Now let's see how we can iterate over the list items, one by one, using the `#each` method.
 
We want to be able to run this program here (`main-4.rb`):

``` ruby
 1. # File: main-4.rb
 2. #
 3. require_relative 'linked_list'
 4. require_relative 'customer'
 5. 
 6. customers = LinkedList.new
 7. 
 8. ['John Smith', 'George Papas', 'Peter Pan'].each do |customer_name|
 9.   customers.add(Customer.new(customer_name))
10. end
11. 
12. puts "Iterating over all customers one-by-one"
13. 
14. customers.each do |customer|
15.   puts customer
16. end
```

If you run this, you will get the following output:

``` bash
$ ruby main-4.rb
Iterating over all customers one-by-one
main-4.rb:14:in `<main>': undefined method `each' for #<LinkedList:0x007fe419219030> (NoMethodError)
$
```

That was expected, because our `LinkedList` does not support the `#each` method. How can we fix that?

`Set` is an `Enumerable`:

``` irb
2.2.3 :001 > require 'set'
 => true 
2.2.3 :002 > Set.included_modules
 => [Enumerable, Kernel] 
2.2.3 :003 >
```

This means that it implements the `#each` method, among others. Hence, if we delegate `LinkedList#each` to `@set`
object, we can have the `LinkedList#each` implementation for free.

``` ruby
 1. # File: linked_list.rb
 2. #
 3. require 'set'
 4. require 'forwardable'
 5. 
 6. class LinkedList
 7.   extend Forwardable
 8. 
 9.   def_delegators :@set, :add, :each
10.   def_delegator :@set, :delete, :remove
11. 
12.   def initialize
13.     @set = Set.new
14.   end
15. 
16.   def to_s
17.     @set.to_a.join("\n")
18.   end
19. end
```

You can see that we have only amended the line 9, `def_delegators :@set, :add, :each`. We have added the delegation
for the the method `:each`.

Now, let's run the program `main-4.rb` again:

``` bash
$ ruby main-4.rb
Iterating over all customers one-by-one
John Smith
George Papas
Peter Pan
$
```

Nice! The iteration works without problem.

## Sorting The Elements

Let's now try to sort the customers and then print its contents (`main-5.rb`);

``` ruby
 1. # File: main-5.rb
 2. #
 3. require_relative 'linked_list'
 4. require_relative 'customer'
 5. 
 6. customers = LinkedList.new
 7. 
 8. ['John Smith', 'George Papas', 'Peter Pan'].each do |customer_name|
 9.   customers.add(Customer.new(customer_name))
10. end
11. 
12. puts 'Print the contents of the list BEFORE sorting'
13. 
14. puts customers
15. 
16. customers.sort!
17. 
18. puts 'Print the contents of the list AFTER sorting'
19. 
20. puts customers
```

You can see that the above program is printing the contents of the customers list *before* sorting. Then it calls
the method `#sort!` to sort the elements of the list. *After* sorting, it prints the contents again. Let's try to run it:
 
``` bash
$ ruby main-5.rb
Print the contents of the list BEFORE sorting
John Smith
George Papas
Peter Pan
main-5.rb:16:in `<main>': undefined method `sort!' for #<LinkedList:0x007fafea180460> (NoMethodError)
$
```

Obviously, our `LinkedList` does not expose the `#sort!` method. But the `@set` does expose the [`#sort` method](http://ruby-doc.org/core-2.4.0/Enumerable.html#method-i-sort). 
We can delegate the sorting to the `@set` object and save the result back to `@set` (since our `#sort!` will affect the `LinkedList` instance itself).

``` ruby
 1. # File: linked_list.rb
 2. #
 3. require 'set'
 4. require 'forwardable'
 5. 
 6. class LinkedList
 7.   extend Forwardable
 8. 
 9.   def_delegators :@set, :add, :each
10.   def_delegator :@set, :delete, :remove
11. 
12.   def initialize
13.     @set = Set.new
14.   end
15. 
16.   def to_s
17.     @set.to_a.join("\n")
18.   end
19. 
20.   def sort!
21.     @set = @set.sort
22.   end
23. end
```

Let's try to run the program again:

``` bash
$ ruby main-5.rb
Print the contents of the list BEFORE sorting
John Smith
George Papas
Peter Pan
.../linked_list.rb:21:in `sort': comparison of Customer with Customer failed (ArgumentError)
        from .../linked_list.rb:21:in `sort!'
        from main-5.rb:16:in `<main>'
$
```

We can now see that calling `@set.sort` (line 21), a `@set` that holds instances of `Customer` class, raises an error.
This is because `@set` does not know how to compare `Customer` instances.

We have already learned in chapter "Everything is an Object" that if we want to use the `#sort` method of an `Enumerable` object,
we have to implement the *spaceship* (`#<=>`) operator on the class that defines the items to sort.

Let's do that. We will implement the spaceship operator for the `Customer` class:

``` ruby
 1. # File: customer.rb
 2. #
 3. require 'forwardable'
 4. 
 5. class Customer
 6.   attr_reader :name
 7. 
 8.   extend Forwardable
 9. 
10.   def_delegators :@name, :hash
11. 
12.   def initialize(name)
13.     @name = name
14.   end
15. 
16.   def to_s
17.     @name
18.   end
19. 
20.   def ==(other)
21.     @name == other.name
22.   end
23. 
24.   alias eql? ==
25. 
26.   def <=>(other)
27.     @name <=> other.name
28.   end
29. end
```

Can you see the lines 26 to 28? They define the spaceship operator for our `Customer` instances. They actually delegate the method call to the
underlying names.

Let's now run the program `main-5.rb` again:

``` bash
$ ruby main-5.rb
Print the contents of the list BEFORE sorting
John Smith
George Papas
Peter Pan
Print the contents of the list AFTER sorting
George Papas
John Smith
Peter Pan
$
```

Bingo! Now our customer list is sorted with a call to `#sort!`.

## `SortedSet`

Note that we could have used `SortedSet` instead of `Set` to implement our `LinkedList` customer list. In that case, we wouldn't have
to call `#sort!` to sort the elements. They would have been sorted anyway. Every time a new element is added to the `SortedSet` it is
inserted at the correct position.

Let's see the version of `LinkedList` that bases its implementation to `SortedSet` instead:

``` ruby
 1. # File: linked_list.rb
 2. #
 3. require 'set'
 4. require 'forwardable'
 5. 
 6. class LinkedList
 7.   extend Forwardable
 8. 
 9.   def_delegators :@set, :add, :each
10.   def_delegator :@set, :delete, :remove
11. 
12.   def initialize
13.     @set = SortedSet.new
14.   end
15. 
16.   def to_s
17.     @set.to_a.join("\n")
18.   end
19. end
```

This version does not export a `#sort!` method. Also, on line 13, we instantiate a `SortedSet` and not a `Set`.

Now, let's try to run the following program `main-6.rb`:

``` ruby
 1. # File: main-6.rb
 2. #
 3. require_relative 'linked_list'
 4. require_relative 'customer'
 5. 
 6. customers = LinkedList.new
 7. 
 8. ['John Smith', 'George Papas', 'Peter Pan'].each do |customer_name|
 9.   customers.add(Customer.new(customer_name))
10. end
11. 
12. puts 'Print the contents of the list: '
13. 
14. puts customers
```

The above program adds some customers and prints the contents of the list. It does not ask the list to be sorted.
But the list is sorted, anyway, because it is based on the `SortedSet`.

Let's run this program:

``` ruby
$ ruby main-6.rb
Print the contents of the list: 
George Papas
John Smith
Peter Pan
$
```

Nice! The customers are printed in alphabetical order and not in the order added to the list.
 
## Stack
 
Stack is a data structure of a collection of items that follows the principle LIFO (Last In First Out). Or in other words,
the item that is added last to the collection is always the first to get out of the collection. Like when you have a pile
of sheets like this:

![./images/A Pile of Sheets](./images/pile-of-sheets.png)

Like on the pile of sheets, you cannot remove a sheet from the middle of the stack. You can only remove a sheet from the
top of the stack, the last one added. Also, you cannot add a sheet in the middle of the stack. The sheet is always added
at the top of the stack.

## Stack Class

Ruby does not offer a `Stack` class out of the box. However, it is not difficult to implement one. Let's do that.

We need to implement a `Stack` class with the following interface:

(1) A method `push` that will add an item to the `Stack`.

(2) A method `pop` that will remove an item from the `Stack`. 

(3) A method `peek` that will return the top item on the `Stack` without removing it.

(4) A method `empty?` that will return either `true` or `false` depending on whether the `Stack` has items in, or not.

(5) A method `size` that will return the number of elements in the `Stack`.

Let's do that (`stack.rb`):

``` ruby
 1. # File: stack.rb
 2. #
 3. require 'forwardable'
 4. 
 5. class Stack
 6.   extend Forwardable
 7. 
 8.   def_delegators :@stack, :push, :pop, :empty?, :size
 9. 
10.   def initialize
11.     @stack = []
12.   end
13. 
14.   def peek
15.     @stack[-1]
16.   end
17. end
```

As you can see, we implement the `Stack` using an `Array`. `Array` already offers 3 out of the 4 methods that we require from the `Stack`.

Let's see an example of using the `Stack` class (`stack-example.rb`):

``` ruby
 1. # File: stack-example.rb
 2. #
 3. require_relative 'stack'
 4. 
 5. puts 'Give me a phrase and I will reverse the order of its words: '
 6. phrase = gets.chomp
 7. if phrase.empty?
 8.   $stderr.puts 'You need to give a phrase'
 9.   exit 1
10. end
11. 
12. puts "Phrase: #{phrase}"
13. 
14. stack = Stack.new
15. 
16. phrase.split(' ').each { |word| stack.push(word) }
17. 
18. new_phrase = ''
19. 
20. while word = stack.pop
21.   new_phrase = "#{new_phrase} #{word}"
22. end
23. 
24. puts "New Phrase: #{new_phrase}"
```

The above program, asks the user to give a phrase. Then, the program prints the phrase with its words in reversed order.

This is an example run of the program:

``` ruby
$ ruby stack-example.rb
Give me a phrase and I will reverse the order of its words: 
I love Ruby programming
Phrase: I love Ruby programming
New Phrase:  programming Ruby love I
$
```

You can see how the program took the phrase `I love Ruby programming` and turned it into `programming Ruby love I`.

How is it done?

(1) The phrase given is split into words: `phrase.split(' ')`

(2) Then we take each word and we push it to the stack: `.each { |word| stack.push(word) }`

(3) Since the stack follows the LIFO principle, popping out all the elements, one-by-one, will
return the words in reverse order, i.e. last one will get out first. This is done between lines 20 and 22.

The `Stack` structure is very common in Computer Science. For example, when Ruby parser encounters a call to
a method, it adds a new item into a calling stack, on top of the item that represents its current parsing level.

## Queue

Another very popular data structure is that of the `Queue`. The difference here being that it follows the
principle of FIFO, i.e. First In First Out. The item that gets first into the queue, it is the item that will get out
of it first too.

## Queue Implementation With Ruby

Ruby does not provide a `Queue` class. But it is easy to implement one. Its main methods should be the following:

(1) A method `enqueue` that will add an item to the `Queue`.

(2) A method `dequeue` that will remove an item from the `Queue`.

(3) A method `peek` that will return the first item in the `Queue`, the one at the front of the `Queue`. It does not remove it from the `Queue`.

(4) A method `empty?` that will return `true` or `false` depending whether the `Queue` is empty or not.

(5) A method `size` that will return the number elements in the `Queue`.

... *implementation of the `Queue` class will be left as one of your tasks for this chapter* ...


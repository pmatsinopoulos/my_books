Implement a [doubly linked list](https://en.wikipedia.org/wiki/Doubly_linked_list). This is similar to the simply linked list that
you were introduced in the chapter, but needs to have the following properties:

(1) Each linked list item (each node of the list) needs to be pointing both to the previous and to the next item in the list.

(2) You need to enhance the list to have a pointer always pointing to the last element in the list. Like the pointer `@first` that
points to the first element in the list.

(3) You need to implement the method `#add`:
``` ruby
def add(item)
...
end
```
This method will be responsible to add a new element at the end of the list.

(4) You need to implement the method `remove`:
``` ruby
def remove(matching_item)
...
end
```
This method will remove from the list the item that matches the given `matching_item`.

(5) You need to implement the `#each` method:
``` ruby
def each
...
end
```
This method would iterate over the elements of the list and yield each element to the block given.

(6) You need to implement the `#reverse_each` method:
``` ruby
def reverse_each
...
end
```
This method would iterate over the elements of the list in a reverse order. It would yield every element to the block given.

(7) You need to implement the `#to_s` method:
``` ruby
def to_s
...
end
```
that would return a string with all the contents of the list. Hint: Use the `#each` method to iterate over the items.

(8) You need to implement the `#to_rs` method:
``` ruby
def to_rs
...
end
```
that would return a string with all the contents of the list in reverse order. Hint: Use the `#reverse_each` to iterate over the items.

(9) You need to implement the method `#first`:
``` ruby
def first
...
end
```
This method would return the first item in the list and would initiate an iteration index that would be helpful to traverse the
items of the list one-by-one using the `#next` method.

(10) You need to implement the method `#next`:
``` ruby
def next
...
end
```
This method would return the next item in the list, using the iteration index initialized by `#first`. It would return `nil` if
no other element is left to iterate for.

(11) You need to implement the methods `#last` and `#previous`. The should work in pair like `#first` and `#next` would do.
But they will be useful to iterate the elements of the list in a reverse order.

(12) Your main program should be this:

``` ruby
# File: main.rb
#
require_relative 'linked_list'
require_relative 'customer'

customers = LinkedList.new

['John Smith', 'George Papas', 'Peter Pan'].each do |customer_name|
  customers.add(Customer.new(customer_name))
end

puts 'List of Customers:'
puts customers

puts 'Reverse list of Customers:'
puts customers.to_rs

# Remove 2nd and then 1st customer:
['George Papas', 'John Smith'].each do |customer_name_to_remove|
  item_to_remove = Customer.new(customer_name_to_remove)

  puts "About to remove #{item_to_remove}"

  customers.remove(item_to_remove)

  puts 'List of Customers:'
  puts customers
end

# Add two more customers
customers.add(Customer.new('Paul Mc Adam'))
customers.add(Customer.new('Marcelo Carlos'))

puts 'Iterate one-by-one starting from first and using next'

customer = customers.first
while customer
  puts customer
  customer = customer.next
end

puts 'Iterate one-by-one starting from last and using previous'

customer = customers.last
while customer
  puts customer
  customer = customer.previous
end
```

and it should run flawlessly, giving the next output:

``` bash
ist of Customers:
John Smith
George Papas
Peter Pan
Reverse list of Customers:
Peter Pan
George Papas
John Smith
About to remove George Papas
List of Customers:
John Smith
Peter Pan
About to remove John Smith
List of Customers:
Peter Pan
Iterate one-by-one starting from first and using next
Peter Pan
Paul Mc Adam
Marcelo Carlos
Iterate one-by-one starting from last and using previous
Marcelo Carlos
Paul Mc Adam
Peter Pan
```

**Important**: Your code needs to be uploaded into a new project on your Github account. Invite your mentor to review your code online.

> *Important:* Tasks are getting more complicated. We believe that the use of a Debugger will benefit you, at this
point. So, if you don't know how to use a Debugger, you may want to read the chapter "Debugging Ruby Programs with a Debugger"

You need sto write an interactive console application in Ruby. Here are the features of this
application:

1. It is a customers and orders management application.
2. It allows the user to carry out CRUD (Create, Retrieve, Update, Delete) actions on Customers and Orders of those Customers.
3. It allows only authenticated users to use the application. 

Let's see that in more detail.

(1) There has to be a class representing the customers, the `Customer` class. Customer should have `name` and `email`.
An `email` uniquely identifies a customer into the customers database. Note that emails are case insensitive. Hence `foo@bar.com` is
exactly the same as `FOO@bar.Com`. 

(2) There has to be a class representing the orders, the `Order` class. Order should have `order_date`, `customer_email`,
`order_number` and `order_items`. The `order_items` should be an array of instances of `OrderItem` objects. The `order_date`
should be an instance of the class [Date](https://ruby-doc.org/stdlib-2.3.3/libdoc/date/rdoc/Date.html).
An order is uniquely identified by the `order_number`. This means that two orders cannot have the same `order_number`.

(3) The order items will be instances of `OrderItem` class. This class will only have three attributes, `item`, `price`, and `currency`.

(4) The application should start with the following command: `ruby crm-application.rb`. No command line arguments will be accepted and processed.

(5) The application should trap the interrupt signal (`SIGINT`) and would gracefully terminate printing the word `Bye!`.

(6) The application configuration should be provided using a YAML file called `crm-application.yml` that would be present at the same directory
like the application start up script directory.

(7) The application configuration content should be something like that:
``` yaml
database:
  customers: customers.json
  orders: orders.json
credentials:
  username: foo
  password: bar
log: crm-application.log  
```
As you can see above, there are two sections in the configuration. The `database` and the the `credentials`. The `credentials` should be
used to authenticate the user, before anything else, at the beginning of the application. If the user does not provide valid username
and password, then application should terminate.

(8) Here is an example run of the application on which user provides wrong credentials:

``` bash
$ ruby crm-application.rb
Username: bar
Password: 
Wrong username or password!
$
```

(9) When the user is authenticated, he needs to give, first the username, and then the password. However, password should not be echoed back
to the console. We need this to be hidden.

> *Hint:* When we want to get input from the standard input, i.e. the console, without echoing back, i.e. displaying, the characters the input
is composed of, in other words, when we do not want to display back/print the characters that the user types in, we need to use the following technique:
``` ruby
require 'io/console'

password = $stdin.noecho do
  gets
end.chomp
```
This is a functionality offered by the `IO/Console` of the Ruby standard library. We wrap the `gets` into a block that is sent to `$stdin.noecho` method.
This makes sure that whatever the `gets` gets from the standard input, it is not echoed back to the terminal.

(10) After the successful authentication of the user, then application enters the normal running mode. 

(11) It presents the user with the option to select which database he would like to manage. The Customers or the Orders database. Like this:

``` bash
Choose database: [c] for customers, [o] for orders:
```

Note that each one of the entities, customers and orders, will be saved into their own database file. The actual files will be specified inside
the configuration of the application. Look for the `database.customers` and `database.orders` keys inside the `crm-application.yml` file.
 
(12) Choosing the database then takes the user into the mode in which they can choose the action that they would like to perform. Like this:
 
``` bash
(Customers): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database:
```

As you can see above, the user has selected to manage the `Customers` database and he is presented with the actions:

1. `c` for create, if they want to create a new `Customer`
2. `r` for retrieve, if they want to retrieve a specific `Customer`. 
3. `u` for update, if they want to update a specific `Customer`.
4. `d` for delete, if they want to delete a specific `Customer`.
5. `l` for list, if they want to list a specific `Customer`.

The action `b` would take user back to the point on which they select the database.

The action for the `Orders` management are the same:

``` bash
(Orders): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: 
```

(13) Let's see the actions in more detail:

For `Customers`:

1. `c` - create. User should be prompted to give the name of the customer and their email address. If the user enters blank, then input should stop.
Note that the user should not be able to create the same customer (same email) twice. So, program needs to take care of that and respond
back to the user with an error message.

2. `l` - list. User should be able to list the contents of the database selected. The customers should be listed one below the other.

Here is a sample run of the program with creation and listing of the customers database:

``` bash
$ ruby crm-application.rb
Username: foo
Password: 
Choose database: [c] for customers, [o] for orders: c
(Customers): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: l
Printing all Customers: 
Name: John Smith, email: john_smith@mailinator.com
Name: Marialena Foo, email: maria_foo@mailinator.com
Name: Peter PAN, email: peter_pan@mailinator.com
Name: George Papas, email: george_papas@gmail.com
(Customers): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: c
About to create a new customer...Give me the name of the customer (or blank to exit): Paul Adam
Give me the email of the customer (or blank if exit): paul_adam@mailinator.com
(Customers): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: l
Printing all Customers: 
Name: John Smith, email: john_smith@mailinator.com
Name: Marialena Foo, email: maria_foo@mailinator.com
Name: Peter PAN, email: peter_pan@mailinator.com
Name: George Papas, email: george_papas@gmail.com
Name: Paul Adam, email: paul_adam@mailinator.com
(Customers): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: c
About to create a new customer...Give me the name of the customer (or blank to exit): Mary Foo
Give me the email of the customer (or blank if exit): maria_foo@mailinator.com
Customer already exists
(Customers): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: 
$
```

3. `r` - retrieve. The user should be asked for the email of the customer to be retrieved. If the email given is not found, then
a message that the customer was not found should be displayed back to the user. However, if the email is found, the customer data should be
displayed. Here is an example run:

``` bash
(Customers): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: r
Retrieving a customer...Give me the email of the customer you are looking for (or blank to exit): george_papas@mailinator.com
Customer not found!
(Customers): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: r
Retrieving a customer...Give me the email of the customer you are looking for (or blank to exit): george_papas@gmail.com
Name: George Papas, email: george_papas@gmail.com
(Customers): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: 
```

Again, note that the query should be case insensitive. 

4. `u` - update. This will require the user to first give the email of the customer they would like to update. If the customer given is not
present, then an error message should be displayed to the user. Otherwise, the option to update name and email should be given. Here is an exaple 
run:

``` bash
Printing all Customers: 
Name: John Smith, email: john_smith@mailinator.com
Name: Marialena Foo, email: maria_foo@mailinator.com
Name: Peter PAN, email: peter_pan@mailinator.com
Name: George Papas, email: george_papas@gmail.com
Name: Paul Adam, email: paul_adam@mailinator.com
(Customers): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: u
Updating a customer...Give me the email of the customer you want to update (or blank to exit): paul_adam@mailinator.com
About to update this customer: Name: Paul Adam, email: paul_adam@mailinator.com
...Give me the name of the customer (or blank to leave unchanged): Paul Mc Adam
Give me the email of the customer (or blank to leave unchanged): 
(Customers): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: l
Printing all Customers: 
Name: John Smith, email: john_smith@mailinator.com
Name: Marialena Foo, email: maria_foo@mailinator.com
Name: Peter PAN, email: peter_pan@mailinator.com
Name: George Papas, email: george_papas@gmail.com
Name: Paul Mc Adam, email: paul_adam@mailinator.com
(Customers): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: 
```

As you can see, the program should ignore the fields that a new value is not provided for.

5. `d` - delete. The delete operation would require the user to give the email of the customer to delete. Here is an example run:

``` bash
Printing all Customers: 
Name: John Smith, email: john_smith@mailinator.com
Name: Marialena Foo, email: maria_foo@mailinator.com
Name: Peter PAN, email: peter_pan@mailinator.com
Name: George Papas, email: george_papas@gmail.com
Name: Paul Mc Adam, email: paul_adam@mailinator.com
(Customers): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: d
About to delete a customer...Give me the email of the customer to delete (or blank to exit): george_papas@gmail.com
(Customers): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: l
Printing all Customers: 
Name: John Smith, email: john_smith@mailinator.com
Name: Marialena Foo, email: maria_foo@mailinator.com
Name: Peter PAN, email: peter_pan@mailinator.com
Name: Paul Mc Adam, email: paul_adam@mailinator.com
(Customers): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: 
```

For `Orders`:

Things are similar. Be careful that the order might be composed of many order items. This means that both create and update should take
that into account and ask the user, first, for the number of order items to create. Here is an example run for the orders:

Note again that 

1. the order should not be allowed if referred to a non-existing customer.
2. the orders are uniquely identified by their order number and this is case insensitive.

``` bash
Printing all Orders: 
Order No: 5, customer: john_smith@mailinator.com, date: 2016-12-20, order_items: Item: Athropoid, Price: 10.0, Currency: EUR
Order No: 4, customer: john_smith@mailinator.com, date: 2016-12-22, order_items: Item: Foo Bar, Price: 10.0, Currency: EUR, Item: Zoo Car, Price: 15.0, Currency: EUR, Item: XOO TAR, Price: 25.0, Currency: EUR
(Orders): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: c
About to create a new order...Give me the email of the customer this order is for (or blank to exit): foo@bar.com
Customer does not exist
(Orders): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: c
About to create a new order...Give me the email of the customer this order is for (or blank to exit): paul_adam@mailinator.com
Give me the order number (or blank to exit): ABCD1234
Give me the number of order items (or blank to exit): 3
Order item (1): 
...Give me the the item (or blank to exit): Flowers for Algernon
...Give me the price (or blank to exit): 7
...Give me the currency (or blank to exit): USD
Order item (2): 
...Give me the the item (or blank to exit): The Count of Monte Cristo             
...Give me the price (or blank to exit): 10
...Give me the currency (or blank to exit): EUR
Order item (3): 
...Give me the the item (or blank to exit): The Invisible Man
...Give me the price (or blank to exit): 8
...Give me the currency (or blank to exit): EUR
(Orders): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: l
Printing all Orders: 
Order No: 5, customer: john_smith@mailinator.com, date: 2016-12-20, order_items: Item: Athropoid, Price: 10.0, Currency: EUR
Order No: 4, customer: john_smith@mailinator.com, date: 2016-12-22, order_items: Item: Foo Bar, Price: 10.0, Currency: EUR, Item: Zoo Car, Price: 15.0, Currency: EUR, Item: XOO TAR, Price: 25.0, Currency: EUR
Order No: ABCD1234, customer: paul_adam@mailinator.com, date: 2016-12-21, order_items: Item: Flowers for Algernon, Price: 7.0, Currency: USD, Item: The Count of Monte Cristo, Price: 10.0, Currency: EUR, Item: The Invisible Man, Price: 8.0, Currency: EUR
```

In order for the user to update an order, they should be asked for the order number of the order to update. Same for the deletion or for the retrieval.

This is another example run:

``` bash
(Orders): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: u
Updating an order...Give me the number of the order you want to update (or blank to exit): ABCD1234
About to update this order: Order No: ABCD1234, customer: paul_adam@mailinator.com, date: 2016-12-21, order_items: Item: Flowers for Algernon, Price: 7.0, Currency: USD, Item: The Count of Monte Cristo, Price: 10.0, Currency: EUR, Item: The Invisible Man, Price: 8.0, Currency: EUR
Give me the email of the customer this order is for (or blank to leave unchanged): john_smith@mailinator.com
Give me the order number (or blank to leave unchanged): 
Give me the order date (YYYY-MM-DD) (or blank to leave unchanged): 
Give me the number of order items (or blank to leave unchanged): 1
Order item (1): 
...Give me the the item (or blank to exit): The Invisible Man
...Give me the price (or blank to exit): 15
...Give me the currency (or blank to exit): EUR
(Orders): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: l
Printing all Orders: 
Order No: 5, customer: john_smith@mailinator.com, date: 2016-12-20, order_items: Item: Athropoid, Price: 10.0, Currency: EUR
Order No: 4, customer: john_smith@mailinator.com, date: 2016-12-22, order_items: Item: Foo Bar, Price: 10.0, Currency: EUR, Item: Zoo Car, Price: 15.0, Currency: EUR, Item: XOO TAR, Price: 25.0, Currency: EUR
Order No: ABCD1234, customer: john_smith@mailinator.com, date: 2016-12-21, order_items: Item: The Invisible Man, Price: 15.0, Currency: EUR
(Orders): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: r
Retrieving an order...Give me the number of the order you are looking for (or blank to exit): ABCD1234
Order No: ABCD1234, customer: john_smith@mailinator.com, date: 2016-12-21, order_items: Item: The Invisible Man, Price: 15.0, Currency: EUR
(Orders): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: d
About to delete an order...Give me the number of the order to delete (or blank to exit): AB
(Orders): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: d
About to delete an order...Give me the number of the order to delete (or blank to exit): ABCD1234
(Orders): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: l
Printing all Orders: 
Order No: 5, customer: john_smith@mailinator.com, date: 2016-12-20, order_items: Item: Athropoid, Price: 10.0, Currency: EUR
Order No: 4, customer: john_smith@mailinator.com, date: 2016-12-22, order_items: Item: Foo Bar, Price: 10.0, Currency: EUR, Item: Zoo Car, Price: 15.0, Currency: EUR, Item: XOO TAR, Price: 25.0, Currency: EUR
(Orders): Select action: [c] for create, [r] for retrieve, [u] for update, [d] for delete, [l] for list, [b] to use another database: 
```

(14) The program can be terminated anytime by the user, using the <kbd>Ctrl+C</kbd> combination. However, no data will be lost, since all changes
should be persistently stored inside the two database files (for customers and orders). This means that when user starts the program again, any
command to list the contents of either Customers or Orders should be displayed a list of the corresponding files entries.

(15) All actions to the databases should be logged. Create, delete and updates should be logged into a log file. The log file
should be determined by the application configuration file. 

Here is a sample from the log file:

``` bash
# Logfile created on 2016-12-21 19:20:22 +0000 by logger.rb/47272
I, [2016-12-21T19:20:56.641850 #25508]  INFO -- : CREATE: Created customer Name: Barbara Main, email: barbara_main@mailinator.com
I, [2016-12-21T19:23:04.872926 #25550]  INFO -- : DELETE: deleted customer with email barbara_main@mailinator.com
I, [2016-12-21T19:23:35.141207 #25550]  INFO -- : UPDATE: updated customer with email peter_olaf@mailinator.com
I, [2016-12-22T06:11:14.653915 #28798]  INFO -- : CREATE: created order Order No: DDD543, customer: peter_pan@mailinator.com, date: 2016-12-22, order_items: Item: The Best Man, Price: 6.5, Currency: GBP, Item: Best of The Best, Price: 10.0, Currency: GBP
```

Make sure you upload you code to your Github account and ask your mentor to review it.

> **Important:** Your Ruby tasks and relevant programs will becoming more and more complex. If you have not done yet, 
you may want to introduce yourself to debugging Ruby programs using a debugger. 
We have a special chapter for this: `Debugging Ruby Programs With a Debugger`.

**Important**: Your code needs to be uploaded into a new project on your Github account. Invite your mentor to review your code online.

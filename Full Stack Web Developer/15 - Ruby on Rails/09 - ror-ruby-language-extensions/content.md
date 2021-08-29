Ruby on Rails has extended Ruby language with some methods that make our lives easier and support the concepts and
ideas that RoR tries to convey. This enrichment is meant to be used both by Ruby on Rails applications and by the framework
itself.

Let's see some of the most important ones:

## Extensions To All Objects

### `blank?` and `present?`

The `#blank?` method returns `true` in the following cases:

1. When it is called on something that is `nil`. In other words `nil.blank?` is `true`:

 ``` ruby
 2.3.3 :001 > nil.blank?
  => true 
 ``` 
1. When it is called on something that is `false`:

 ``` ruby
 2.3.3 :002 > false.blank?
  => true 
 ```
1. When it is called on strings that are composed only of whitespace characters or that they are completely empty:
 
 ``` ruby
 2.3.3 :003 > ''.blank?
  => true 
 2.3.3 :004 > ' '.blank?
  => true 
 2.3.3 :005 > "     \n    ".blank?
  => true 
 ```
1. When it is called on empty arrays:

 ``` ruby
 2.3.3 :006 > [].blank?
  => true 
 ```
1. When it is called on empty hashes:
 
 ``` ruby
 2.3.3 :007 > {}.blank?
  => true 
 ```
1. When it is called on an object that responds to `#empty?` and returns `true`:
 
 ``` ruby
 2.3.3 :004 > class A
 2.3.3 :005?>   def empty?
 2.3.3 :006?>     true
 2.3.3 :007?>     end
 2.3.3 :008?>   end
  => :empty? 
 2.3.3 :009 > a = A.new
  => #<A:0x007fe6f2148b48> 
 2.3.3 :010 > a.blank?
  => true 
 2.3.3 :011 > class B
 2.3.3 :012?>   def empty?
 2.3.3 :013?>     false
 2.3.3 :014?>     end
 2.3.3 :015?>   end
  => :empty? 
 2.3.3 :016 > b = B.new
  => #<B:0x007fe6eb6660c8> 
 2.3.3 :017 > b.blank?
  => false 
 ```
As you can see above, instance of `A` class is blank whereas instance of `B` class is not blank. This is because
the instances of `A` return `true` on `#empty?` call. Whereas instances of `B` return `false` on `#empty?` call. 

Note that the `present?` is implemented as `!blank?`. For example `false.present?` returns `false`, which catches
by surprise the novice Ruby on Rails developers.

### `presence`

The `#presence` returns its receiver if the receiver `#present?` returns `true`. Otherwise, it returns `nil`. So,
instead of writing

``` ruby
foo = bar.present? ? bar : 'foo'
```

you can write 

``` ruby
foo = bar.presence || 'foo'
```

### `try`

There are many times in which you want to call a method on an object, but you don't know whether the object is `nil` or not.
Hence, you end up writing code like this:

``` ruby
if @invoice.present?
  @invoice.print
end
```

With `try`, you can call the method and it will not fail if the receiver is `nil`:

``` ruby
@invoice.try(:print)
```

You can also call `try` and pass a block. This is useful if you want to call many methods on the receiver that could potentially
be `nil`:

``` ruby
@invoice.try do |invoice|
  invoice.print
  invoice.store
end
```

However, in the latter case, you should prefer the `try!` instead, because it will catch your spelling errors, whereas the `try`
would swallow them.

### `to_param`

Sometimes you want to include an object into query string parameters. In order to do that Rails calls the method `#to_param` to that
object. The result is being used as the _value_ part of the query string for this parameter or as URL fragment.

``` ruby
2.3.3 :001 > "Foo".to_param
 => "Foo" 
2.3.3 :002 > "this is hello world".to_param
 => "this is hello world" 
```

As you can see the value is not URL encoded. 

The idea here is that you may want to override the `#to_param` method for particular classes. For example:

``` ruby
2.3.3 :003 > class A
2.3.3 :004?>   def initialize(day_of_week)
2.3.3 :005?>     @day_of_week = day_of_week
2.3.3 :006?>     end
2.3.3 :007?>   def to_param
2.3.3 :008?>     case @day_of_week
2.3.3 :009?>       when 0
2.3.3 :010?>         return 'Sunday'
2.3.3 :011?>       when 1
2.3.3 :012?>         return 'Monday'
2.3.3 :013?>       when 2
2.3.3 :014?>         return 'Tuesday'
2.3.3 :015?>       when 3
2.3.3 :016?>         return 'Wednesday'
2.3.3 :017?>       when 4
2.3.3 :018?>         return 'Thursday'
2.3.3 :019?>       when 5
2.3.3 :020?>        return 'Friday'
2.3.3 :021?>       when 6
2.3.3 :022?>         return 'Saturday'
2.3.3 :023?>       else
2.3.3 :024 >         raise 'Not valid day of week'
2.3.3 :025?>       end
2.3.3 :026?>     end
2.3.3 :027?>   end
 => :to_param 
2.3.3 :028 > a = A.new(3)
 => #<A:0x007fe6eaed9080 @day_of_week=3> 
2.3.3 :029 > a.to_param
 => "Wednesday" 
```

Then, when, for example, you call route url helpers, that take arguments of class `A`, the values will be converted using `#to_param` in order to build the query string
and/or the URL.

### `to_query`

The `#to_query` can be used to build both the key and the value to be used in a query string. Also, both the key and the value will be URL encoded. If we continue the previous
example...

``` ruby
2.3.3 :030 > a.to_query('foo')
 => "foo=Wednesday" 
2.3.3 :031 > a.to_query('fantastic day')
 => "fantastic+day=Wednesday" 
```

### `in?`

The method `#in?` checks whether the receiver is included in the list of arguments given to the method. So, instead of writing:

``` ruby
[1, 2, 3].include?(1)
```

we write

``` ruby
1.in?([1, 2, 3])
```

## Extensions To `Module`

### Method Delegation

You can use the method `delegate` in order to make sure that the implementation of a method is offered by another object and not by
the receiver.

For example:

``` ruby
class Invoice < ActiveRecord
  belongs_to :user
  
  delegate :email, address, to: :user
  ...
end
```
   
In that case, I can have an `Invoice` instance and call `#email` on it. The call will be forwarded to the `user` associated to the
invoice at hand.

## Extensions to `Class`

### `class_attribute`

The `class_attribute` allows you to define attributes at `Class` level. These attributes can be overridden by sub-classes.

The _issue_ with class attributes that come with Ruby is that changing the value of a class attribute via a sub-class
affects the value of the class attribute at the superclass too:

``` ruby
2.3.3 :001 > class A
2.3.3 :002?>   cattr_accessor :a
2.3.3 :003?>   end
 => [:a] 
2.3.3 :004 > class B < A
2.3.3 :005?>   end
 => nil 
2.3.3 :006 > A.a = 5
 => 5 
2.3.3 :007 > B.a 
 => 5 
2.3.3 :008 > B.a = 4
 => 4 
2.3.3 :009 > A.a
 => 4 
```

As you can see, the command `:008` affects the value of the `a` class attribute for the `A` class too. If you want to have
inheritance with attributes that are independent, you should use the `class_attribute` instead:

``` ruby
2.3.3 :001 > class A
2.3.3 :002?>   class_attribute :a
2.3.3 :003?>   end
 => [:a] 
2.3.3 :004 > class B < A
2.3.3 :005?>   end
 => nil 
2.3.3 :006 > A.a = 5
 => 5 
2.3.3 :007 > B.a
 => 5 
2.3.3 :008 > B.a = 4
 => 4 
2.3.3 :009 > A.a
 => 5 
2.3.3 :010 > B.a
 => 4 
```

You can see that the command `:008` does not affect the `A.a` value.

### `subclasses`

The `subclasses` method returns the list of classes that are subclasses (direct descendants) of the receiver:

``` ruby
2.3.3 :003 > A.subclasses
 => [] 
2.3.3 :004 > class B < A
2.3.3 :005?>   end
 => nil 
2.3.3 :006 > A.subclasses
 => [B] 
2.3.3 :007 > class C < B
2.3.3 :008?>   end
 => nil 
2.3.3 :009 > A.subclasses
 => [B] 
```

### `descendants`

The `descendants` method returns the list of classes that are subclasses of the receiver but not necessarily direct subclasses:

``` ruby
2.3.3 :001 > class A
2.3.3 :002?>   end
 => nil 
2.3.3 :003 > A.subclasses
 => [] 
2.3.3 :004 > class B < A
2.3.3 :005?>   end
 => nil 
2.3.3 :006 > A.subclasses
 => [B] 
2.3.3 :007 > class C < B
2.3.3 :008?>   end
 => nil 
2.3.3 :009 > A.subclasses
 => [B] 
2.3.3 :010 > A.descendants
 => [C, B] 
```

You can see that `C` is part of the `descendants` but not part of the `subclasses` of `A`.

## Extensions to String

### `remove`

The method `remove` is added to `String` instances. It removes all the occurrences of the pattern given as argument:

``` ruby
2.3.3 :011 > "Hello World!".remove /d!/
 => "Hello Worl" 
```

### `squish`

It removes leading and trailing whitespace, as well as it replaces multiple sequences of whitespace with single space.

``` ruby
2.3.3 :012 > "     \n \n    Hello        World! I \n\n     love Ruby!    \n\n    \n    ".squish
 => "Hello World! I love Ruby!" 
```

### `truncate`

Returns the first part of the receiver up to the number of characters given as input argument. Note that the last 3
characters are replaced with `...`:

``` ruby
2.3.3 :014 > "This is a long sentence!".truncate(10)
 => "This is..." 
```

This method is very useful in views when we have limited width to display a long value.

### `from`

Returns the substring of the string starting at position given as input argument:

``` ruby
2.3.3 :015 > "This is a long sentence!".from(5)
 => "is a long sentence!" 
```

### `to`

Returns the first part of the string up to the position specified by the input argument:

``` ruby
2.3.3 :017 > "This is a long sentence!".to(4)
 => "This " 
```

### `camelize`

It turns a string to its Camel format equivalent. It is usually used to strings that have the snake format. 

``` ruby
2.3.3 :019 > "invoice_item".camelize
 => "InvoiceItem" 
```

### `underscore`

It does the opposite of `camelize`:

``` ruby
2.3.3 :020 > "InvoiceItem".underscore
 => "invoice_item" 
```

### `titleize`

It capitalizes the words in the receiver.

``` ruby
2.3.3 :021 > "hello world".titleize
 => "Hello World" 
```

### `parameterize`

The string is normalized so that it can be used in URLs:

``` ruby
2.3.3 :023 > "Hello World".parameterize
 => "hello-world" 
```

### `tableize`

It turns a string to a string that can be used as a table name. It's useful when converting a class name to a table name:

``` ruby
2.3.3 :025 > "InvoiceItem".tableize
 => "invoice_items" 
```

### `classify`

It turns a table name to a name that can be used as a `Class` name:

``` ruby
2.3.3 :026 > "invoice_items".classify
 => "InvoiceItem" 
```

### `constantize`

It returns its receiver to a constant and resolves it, which means it needs to be part of the defined constants.

``` ruby
Loading development environment (Rails 5.1.1)
2.3.3 :001 > class MyClass
2.3.3 :002?>   end
 => nil 
2.3.3 :003 > "MyClass".constantize.new
 => #<MyClass:0x007fe6f22f8c40> 
2.3.3 :004 > "NonExistingClass".constantize
NameError: uninitialized constant NonExistingClass
        from (irb):4
```

This method can be really useful when coding at meta-programming level.

### `humanize`

It converts a string to something that can be easier read by a human:

``` ruby
2.3.3 :008 > 'comments_count'.humanize
 => "Comments count" 
```

### `foreign_key`

It takes a class name and returns the foreign key column name:

``` ruby
2.3.3 :009 > 'Customer'.foreign_key
 => "customer_id" 
```

### `to_date`, `to_time`, `to_datetime`

These methods convert the string receiver to a `Date`, or `Time` or `DateTime` instance.

``` ruby
2.3.3 :010 > "2017-07-23 12:04:04".to_datetime
 => Sun, 23 Jul 2017 12:04:04 +0000 
2.3.3 :012 > "2017-07-23 12:04:04".to_time(:local)
 => 2017-07-23 12:04:04 +0300 
2.3.3 :013 > "2017-07-23 12:04:04".to_time(:utc)
 => 2017-07-23 12:04:04 UTC 
```

See how the `to_time` takes as argument either `:local` or `:utc` and converts the string into the local or UTC time 
respectively.

## Extensions to Numeric

### Bytes

All numbers now respond to the following methods:

``` ruby
bytes
kilobytes
megabytes
gigabytes
terabytes
petabytes
exabytes
```

For example:

``` ruby
2.3.3 :016 > 3.megabytes
 => 3145728 
2.3.3 :017 > 3 * 1024.kilobytes
 => 3145728 
```

### Time

You can do time calculations since numbers respond to methods like `#minutes`, `#hours`, `#years`, `#seconds` and more:

``` ruby
2.3.3 :018 > 24.minutes.from_now
 => Sun, 23 Jul 2017 09:55:07 UTC +00:00 
2.3.3 :019 > 30.minutes + 30.minutes == 1.hour
 => true 
2.3.3 :021 > Time.zone.now
 => Sun, 23 Jul 2017 09:32:02 UTC +00:00 
2.3.3 :022 > Time.zone.now - 2.hours
 => Sun, 23 Jul 2017 07:32:04 UTC +00:00 
```

### Formatting

You can use various methods to format numbers.

For example:

``` ruby
2.3.3 :023 > 1024.to_s(:human_size)
 => "1 KB" 
```

## Extensions to Enumerable

### `sum`

The method `sum` adds the elements of an `Enumerable`:

``` ruby
2.3.3 :024 > [1, 2, 3].sum
 => 6 
```

### `many?`

The method `many?` returns `true` if there are more than one element in the collection:

``` ruby
2.3.3 :025 > [1, 2, 3].many?
 => true 
2.3.3 :026 > [1].many?
 => false 
2.3.3 :027 > [].many?
 => false 
```

### `exclude?`

It returns `true` if an element does not belong to a collection:

``` ruby
2.3.3 :028 > [1, 2, 3].exclude?(2)
 => false 
2.3.3 :029 > [1, 2, 3].exclude?(4)
 => true 
```

### `without`

It returns a collection copy without the specified elements in:

``` ruby
2.3.3 :030 > [1, 2, 3, 4].without(2, 3)
 => [1, 4] 
```

## Extensions to Hash

### Merging

Ruby already supports Hash merging:

``` ruby
2.3.3 :033 > {a: '1', b: '2', c: '0'}.merge({c: '3', d: '4'})
 => {:a=>"1", :b=>"2", :c=>"3", :d=>"4"} 
```

but Active Support adds some useful extensions.

For example, the `reverse_merge`. With `reverse_merge` when there is a key collision the winner is the receiver and not the Hash which is 
given as argument.

### `except`

It returns a Hash with the keys in the arguments removed:

``` ruby
2.3.3 :035 > {a: '1', b: '2', c: '0'}.except(:a, :c)
 => {:b=>"2"} 
```

The `except!` updates the receiver:

``` ruby
2.3.3 :036 > h = {a: '1', b: '2', c: '3'}
 => {:a=>"1", :b=>"2", :c=>"3"} 
2.3.3 :037 > h.except!(:b)
 => {:a=>"1", :c=>"3"} 
2.3.3 :038 > h
 => {:a=>"1", :c=>"3"} 
2.3.3 :039 > 
```

### `transform_keys`

The `transform_keys` converts keys using a logic given as a block to the method call:

``` ruby
2.3.3 :041 > {a: '1', b: '2', c: '3'}.transform_keys { |k| k.to_s.upcase }
 => {"A"=>"1", "B"=>"2", "C"=>"3"} 
```

The `transform_keys!` updates the receiver.

Also, the `deep_transform_keys` does a deep operation on nested hashes:
 
``` ruby
2.3.3 :046 > {a: '1', b: '2', c: '3', d: {foo: :bar}}.transform_keys { |k| k.to_s.upcase }
 => {"A"=>"1", "B"=>"2", "C"=>"3", "D"=>{:foo=>:bar}} 
2.3.3 :047 > {a: '1', b: '2', c: '3', d: {foo: :bar}}.deep_transform_keys { |k| k.to_s.upcase }
 => {"A"=>"1", "B"=>"2", "C"=>"3", "D"=>{"FOO"=>:bar}} 
2.3.3 :048 > 
```

### `stringify_keys`

It converts the keys of a Hash to their string representation by calling `#to_s` on each one of them:

``` ruby
2.3.3 :042 > {a: '1', b: '2', c: '3'}.stringify_keys
 => {"a"=>"1", "b"=>"2", "c"=>"3"} 
```

The `stringify_keys!` updates the receiver.

Also, the `deep_stringify_keys` does a deep conversion of the keys to strings:

``` ruby
2.3.3 :048 > {a: '1', b: '2', c: '3', d: {foo: :bar}}.stringify_keys
 => {"a"=>"1", "b"=>"2", "c"=>"3", "d"=>{:foo=>:bar}} 
2.3.3 :049 > {a: '1', b: '2', c: '3', d: {foo: :bar}}.deep_stringify_keys
 => {"a"=>"1", "b"=>"2", "c"=>"3", "d"=>{"foo"=>:bar}} 
```

### `symbolize_keys`

It converts the keys to their symbol equivalent by calling `#to_sym` on each one of them:

``` ruby
2.3.3 :051 > {'a' => '1', 'b' => '2', 'c' => '3', 'd' => {'foo' => :bar}}.symbolize_keys
 => {:a=>"1", :b=>"2", :c=>"3", :d=>{"foo"=>:bar}} 
```

The `symbolize_keys!` updates the receiver.

Also, the `deep_symbolize_keys` does a deep symbolization of the keys:

``` ruby
2.3.3 :052 > {'a' => '1', 'b' => '2', 'c' => '3', 'd' => {'foo' => :bar}}.deep_symbolize_keys
 => {:a=>"1", :b=>"2", :c=>"3", :d=>{:foo=>:bar}} 
```

### `assert_valid_keys`

This is very useful to make sure that a Hash holds only valid keys:

``` ruby
2.3.3 :057 >   {username: 'foo', password: 'bar'}.assert_valid_keys(:username, :password)
 => {:username=>"foo", :password=>"bar"} 
2.3.3 :058 > {username: 'foo', password: 'bar', type: 'customer'}.assert_valid_keys(:username, :password)
ArgumentError: Unknown key: :type. Valid keys are: :username, :password
        from (irb):58
```

As you can see, the second call to `assert_valid_keys` raises an error of type `ArgumentError` telling us that
the Hash contains keys that are not valid (`:type` key is not in the white list of keys).

### Indifferent Access

The method `with_indifferent_access` returns a hash which is of type `ActiveSupport::HashWithIndifferentAccess`. This
has the ability to treat symbol and string keys as equal:

``` ruby
2.3.3 :063 > {a: 1, b: 2}.has_key?('a')
 => false 
2.3.3 :064 > {a: 1, b: 2}.with_indifferent_access.has_key?('a')
 => true 
```

## Extensions to Date

### `Date.current`

It returns the date of today in current time zone.

### `Date.today`

It returns the date of today but does not honour the current time zone.

### `Date.yesterday`, `Date.tomorrow`

They return the date before today and the date after today respectively.

### `past?`, `today?`, `future?`, `on_weekday?, `on_weekend?`

These are methods that should be called on a `Date` instance:

``` ruby
2.3.3 :018 > Date.current
 => Sun, 23 Jul 2017 
2.3.3 :019 > Date.current.past?
 => false 
2.3.3 :020 > (Date.current - 1.day).past?
 => true 
2.3.3 :021 > (Date.current - 1.day).today?
 => false 
2.3.3 :022 > (Date.current - 1.day).future?
 => false 
2.3.3 :023 > (Date.current + 1.day).future?
 => true 
2.3.3 :024 > (Date.current + 1.day).past?
 => false 
2.3.3 :025 > Date.current.on_weekend?
 => true 
2.3.3 :026 > (Date.current + 3.days).on_weekday?
 => true 
2.3.3 :027 > (Date.current + 3.days).on_weekend?
 => false 
```

### Named Dates

ActiveSupport provides methods like `#prev_year` and `#next_year` that calculate another Date based on a Date at hand.

## Extensions to DateTime

ActiveSupport defines extensions to DateTime. For example `DateTime.current` returns the current date and time using
the currently defined time zone.

## Closing Note

ActiveSupport adds a lot of useful methods which you can use to your own benefit in your Ruby on Rails applications.
You can read more about it in the [Rails Guides here](http://guides.rubyonrails.org/active_support_core_extensions.html).

## Combining Assignment and Maths Operators

The assignment operator can be combined with mathematics operators. Let's open the operating system terminal and, then,
start the interactive ruby console:

``` bash
$: irb
2.2.3 :001 >
```

The operator `+=` is a combination of assignment and addition. Let's see the following example:

``` ruby
2.2.3 :001 > a = 2
 => 2 
2.2.3 :002 > a += 3
 => 5 
2.2.3 :003 > 
```

As you can see, the command at line `002` does not assign the value `3` at the variable `a`. It takes the content
of the variable `a` and adds `3` to it. Then the result is assigned as new content for the variable `a`. Hence, at the
end, the variable `a` has the content `5`.

In other words, the `a += 3` is basically equivalent to `a = a + 3`. It is its shorthand.

Of course, this method of assignment, increment in fact, needs to be applied to a variable that is already defined. If you try `b += 3` you will get an
error, because variable `b` is not defined:

``` ruby
2.2.3 :003 > b += 3
NoMethodError: undefined method `+' for nil:NilClass
        from (irb):3
        ...
2.2.3 :004 > 
```

The error message says that you are try to call the method `+` on an object that has value `nil`, implying that `b` is defined and has
the value `nil`. Which is true! The command `b += 3` defines the variable `b` to have the content `nil`. The problem is that we cannot apply the `+`
operator on a `nil` value, and this is the real reason that the command fails. 

Try to just invoke the variable `b`. 

``` ruby
2.2.3 :004 > b
 => nil 
2.2.3 :005 > 
```
which proves that `b` has been defined when the command `b += 3` has been parsed, even if `b` was not previously defined by any other command.
On the contrary, if you just try to call `c` it will fail with undefined variable error:

``` ruby
2.2.3 :005 > c
NameError: undefined local variable or method `c' for main:Object
        from (irb):5
        ...
2.2.3 :006 > 
```

In order to summarize what we have learnt above:

(1) A variable needs to be defined before it can be used, i.e. invoke it by name in order to have access to its content.

(2) A variable is defined when we assign content to it.

(3) Assignment is done with the `=` assignment operator. This defines the variable too, as item (2) above mentions.

(4) The combined assignment-increment operator defines the variable but it sets its content to `nil`.

The right-hand side of the assignment-increment operator can be any valid Ruby expression that, when it is evaluated, returns a result
that can be used as the right-hand side of an addition.

Let's see the following example:

``` ruby
2.2.3 :006 > c = 10
 => 10 
2.2.3 :007 > c += a - 2 * 3
 => 9 
2.2.3 :008 > 
```
On line `006` we set the content of the variable `c` to be `10`. But on line `007` we increment this content by the result of the Ruby 
expression `a - 2 * 3`. The `a - 2 * 3` equals to `-1` (since `a` is equal to `5`). Hence, incrementing `10` by `-1` results to `9`, which
is now the value of `c`. Remember that `c += a - 2 * 3` is equivalent to `c = c + a - 2 * 3`, and that on assignment operator, whatever exists
on the right-hand side is assigned to the left-hand side.

The combination of the assignment operator `=` with the mathematics operator `+` can be equal carried out with the other mathematics operators too.

Let's do the following example:

``` ruby
2.2.3 :008 > d = 10
 => 10 
2.2.3 :009 > d -= a
 => 5 
2.2.3 :010 > 
```

Initially `d` is given the value `10`. But then, on line `009` is decremented by the value of `a`, which is `5`. Hence, new value of `d` is
`5`. Again, `d -= a` is equivalent to `d = d - a`.

Let's try with multiplication:

``` ruby
2.2.3 :010 > e = 10
 => 10 
2.2.3 :011 > e *= 2
 => 20 
2.2.3 :012 > 
```

As you can see, the variable `e` ends to be `20` after the `*=` which multiplies its original content `10` by `2`. The `e *= 2` is equivalent
to `e = e * 2`.

Division:

``` ruby
2.2.3 :012 > a = 10
 => 10 
2.2.3 :013 > a /= 2
 => 5 
2.2.3 :014 > a
 => 5 
2.2.3 :015 > 
```
On line `013` we divide `10` by `2` and the result is assigned back to `a`. `a /= 2` is equivalent to `a = a / 2`.

With modulo:

``` ruby
2.2.3 :015 > a %= 2
 => 1 
2.2.3 :016 > a
 => 1 
2.2.3 :017 > 
```
`a` initially being equal to `5`, when we execute `a %= 2` the result assigned to `a` is `1`, which is the remainder of the division `5 / 2`. Again, `a %= 2` is
equivalent to `a = a % 2`.

# Integers vs Decimals

Let's change subject, for a while, and examine the differences between integers and decimals.

An integer is a number that does not have decimal point. So `5` is an integer. Whereas `5.3` or `5.0` is not. `5.3` is a decimal. 

Try the following command:

``` ruby
2.2.3 :017 > 5.class
 => Fixnum 
2.2.3 :018 > 5.3.class
 => Float 
2.2.3 :019 > 
``` 

We have not learnt about the `.class` call on a literal number, but we will do later on in the Ruby section. Until then, just let me tell you that the call `.class`
returns the type of the number it is being called on. As you can see, `5.class` returns `Fixnum` and `5.3.class` returns `Float. These are the 2 different
classes. First for integers, the are called `Fixnum`. Second for decimals, they are called `Float` numbers.

Another way you can check whether a number is an integer or not, is if you called the `.integer?` method on it. It will return `true` if the number is integer.
It will return `false` if the number is not.

So, basically, Ruby supports Integers and Floating Point numbers. Integers are stored as objects of class `Fixnum` or `Bignum`, depending on how big the integer
number is. Floating point numbers are represented as `Float` instances. There are also extensions to the core Ruby number types, like the `BigDecimal` class. We will
talk about that later in our course.

Note that you need pay extra attention to the `/` division operation. If the operands are integers, then the operator returns the integer part of the division.
If you want to get the decimal result, then you need to convert one of the two operands, at least, to a decimal number.

``` irb
2.2.3 :021 > 5 / 3.0
 => 1.6666666666666667 
2.2.3 :022 > 
```
On the above example, we converted the `3` to `3.0` in order to get the decimal result. 

``` irb
2.2.3 :022 > a = 5
 => 5 
2.2.3 :023 > b = 3
 => 3 
2.2.3 :024 > a / b
 => 1 
2.2.3 :025 > a / b.to_f
 => 1.6666666666666667 
2.2.3 :026 > 
```

On the above example, because of the fact that the operands of the division are variables, we call the method `.to_f` to convert one of the two operands
to a float/decimal number (`to_f` is for `to float`).

And since we have learnt the `to_f`, you may find useful that there is also the method `to_i` that converts a float to integer:

``` irb
2.2.3 :026 > a / 3.8
 => 1.3157894736842106 
2.2.3 :027 > a / 3.8.to_i
 => 1 
2.2.3 :028 > 
```
The `3.8.to_i` converts the `3.8` to integer by truncating the decimal part. Hence the division is an integer division like if it were `a / 3`, and returns `1`.

# Constants

Many languages allow you to define some places in memory that will hold content that shouldn't be changed. It should be constant. The language construct for that
is call `Constant`. In Ruby, in order to define a constant you do it like you define variables, but the name needs to start with an uppercase Latin character.
So, whenever you name a place in memory and you assign content to it, and the name starts with an uppercase Latin character, then you do not define a variable, but
you define a constant.

``` irb
2.2.3 :028 > MAXIMUM_HEIGHT = 100
 => 100 
2.2.3 :029 > 
```

Note that for constants, the naming convention that we use, is that of the snake format, but all letters need to be uppercase. Again, this is not mandatory.
The only mandatory thing here is that the first letter is an uppercase Latin character. 

Hence these are valid constant names:

1. `MaximumHeight`
2. `Maximumheight`
3. `Maximum_Height`

but we prefer the style: `MAXIMUM_HEIGHT`. 

> *Note:* In Ruby, classes and modules are also constants. And their name follows the Camel convention, starting again with an uppercase Latin character.
We will talk about that when we will be talking about classes and modules.

Now, as we said, the content of a constant should not be changed. Other programming languages do not allow the programmer to update the content of a constant.
They raise an error, either at compile or at run-time. However, Ruby is more flexible here (and in many other aspects of programming). It does allow the programmer
to change the content of a defined constants, but, it will raise a warning. It will not prevent it though. 

``` ruby
2.2.3 :030 > MAXIMUM_HEIGHT = 30
(irb):30: warning: already initialized constant MAXIMUM_HEIGHT
(irb):29: warning: previous definition of MAXIMUM_HEIGHT was here
 => 30 
2.2.3 :031 >
```
Do you see the warning after trying to update the `MAXIMUM_HEIGHT` content? It also tells you where the previous definition of the constant was done.

Having said that, I advice you that you don't update the content of a constant if it is already defined. Maybe, if you know what you are doing, you may want
to first undefine the constant and the redefine it again with the new content. 

> *Information:* Undefining a constant will be taught later on in the Ruby section.
 
## Closing Note

For your better understanding, you can watch the following video that describes the content of this chapter using some hands-on exercises inside Linux/Debian environment.

<div id="media-title-video-ruby-assignment-integers-decimals-constants.mp4">Ruby: Assignment Operators, Integers, Decimals, Constants</div>
<a href="https://player.vimeo.com/video/194474450"></a>

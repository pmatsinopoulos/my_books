## Some Boolean Logic Basics

In boolean logic something is either `TRUE` or `FALSE`. For example

```
5 is greater than 4
```

is `TRUE`, whereas 

```
5 is greater than 6
```

is `FALSE`.

Besides, the 2 values, `TRUE` and `FALSE`, boolean logic includes some boolean operators. These are:

1. `AND`
2. `OR`
3. `XOR`
4. `NOT`

The above 4 operators are being divided into 2 categories. The binary and unary ones. The binary operators are
the first 3, i.e. `AND`, `OR`, `XOR` and the last one is an unary operator.

Binary operators are being applied to 2 operands, the left and the right. Unary operators are being applied to
1 operand, the right one.

Let's assume that we have two operands `A` and `B` to be used with these boolean operators. Then these operands
need to be boolean operands and need to take one of the two boolean values, i.e. `TRUE` or `FALSE`.

Hence, the two operands used together on a binary operator can take the following values:

<table>
  <tr><th>A</th><th>B</th></tr>
  <tr><td>FALSE</td><td>FALSE</td></tr>
  <tr><td>FALSE</td><td>TRUE</td></tr>
  <tr><td>TRUE</td><td>FALSE</td></tr>
  <tr><td>TRUE</td><td>TRUE</td></tr>
</table>

Sometimes we like to use `T` instead of `TRUE` and `F` instead of `FALSE`.

<table>
  <tr><th>A</th><th>B</th></tr>
  <tr><td>F</td><td>F</td></tr>
  <tr><td>F</td><td>T</td></tr>
  <tr><td>T</td><td>F</td></tr>
  <tr><td>T</td><td>T</td></tr>
</table>

Having said that, applying a binary operator on any combination of these values, it results into another
boolean result, value, which is either `TRUE` or `FALSE`. And the result, of course, depends on the actual
operator that we apply.

Here are the rules, represented using a table of truth, as we call it:

### `AND` Operator

<table>
  <tr><th colspan="3">AND</th></tr>
  <tr><th>A</th><th>B</th><th>A AND B</th></tr>
  <tr><td>F</td><td>F</td><td style="text-align:center;">F</td></tr>
  <tr><td>F</td><td>T</td><td style="text-align:center;">F</td></tr>
  <tr><td>T</td><td>F</td><td style="text-align:center;">F</td></tr>
  <tr><td>T</td><td>T</td><td style="text-align:center;">T</td></tr>
</table>

The result of applying the `AND` boolean operator to two boolean values is `TRUE` only if both operands are `TRUE`.
The above table gives the result of applying `AND` to any combination of `A` and `B` values.

### `OR` Operator

<table>
  <tr><th colspan="3">OR</th></tr>
  <tr><th>A</th><th>B</th><th>A OR B</th></tr>
  <tr><td>F</td><td>F</td><td style="text-align:center;">F</td></tr>
  <tr><td>F</td><td>T</td><td style="text-align:center;">T</td></tr>
  <tr><td>T</td><td>F</td><td style="text-align:center;">T</td></tr>
  <tr><td>T</td><td>T</td><td style="text-align:center;">T</td></tr>
</table>

The result of applying the `OR` boolean operator to two boolean values is `TRUE` unless both of the operands are `FALSE`.
So, if at least one is `TRUE` the result is always `TRUE`. If both of them are `FALSE` the result is `FALSE`.

### `XOR` Operator

<table>
  <tr><th colspan="3">XOR</th></tr>
  <tr><th>A</th><th>B</th><th>A XOR B</th></tr>
  <tr><td>F</td><td>F</td><td style="text-align:center;">F</td></tr>
  <tr><td>F</td><td>T</td><td style="text-align:center;">T</td></tr>
  <tr><td>T</td><td>F</td><td style="text-align:center;">T</td></tr>
  <tr><td>T</td><td>T</td><td style="text-align:center;">F</td></tr>
</table>

The `XOR` returns `TRUE` if either of the operands is `TRUE` but not both of them. One and only one of them needs to be `TRUE`,
in order for the result to be `TRUE`.

### `NOT` Operator

The `NOT` operator is unary operator and applies against only 1 boolean value. Here is its truth table:

<table>
  <tr><th colspan="2">NOT</th></tr>
  <tr><th>A</th><th>NOT A</th></tr>
  <tr><td>F</td><td style="text-align:center;">T</td></tr>
  <tr><td>T</td><td style="text-align:center;">F</td></tr>
</table>

As you can see, the `NOT` operator reverses the boolean value of its operand. Hence, if the operand is `TRUE`, it returns `FALSE`.
If the operand is `FALSE` it returns `TRUE`. It is the negation operator as we call it.

## Representing True and False with Binary Values

Before we close this introduction and go to Ruby representation of boolean logic, let me tell you that it is very usual
that we represent the `TRUE` value with the binary value `1` and the `FALSE` value with the binary value `0`. Hence,
the table of truth for the `AND` operator, for example, might be printed like this:

<table>
  <tr><th colspan="3">AND</th></tr>
  <tr><th>A</th><th>B</th><th>A AND B</th></tr>
  <tr><td>0</td><td>0</td><td style="text-align:center;">0</td></tr>
  <tr><td>0</td><td>1</td><td style="text-align:center;">0</td></tr>
  <tr><td>1</td><td>0</td><td style="text-align:center;">0</td></tr>
  <tr><td>1</td><td>1</td><td style="text-align:center;">1</td></tr>
</table>

## Boolean Logic and Ruby

Let's move on now and study how Ruby deals with boolean logic.

Make sure that you have your RubyMine started. We are going to write a program to demonstrate the boolean logic in Ruby. Let's call this program
file `bool.rb`.

Here are some rules that you need to remember:

1. In Ruby, the `TRUE` literal value is represented with `true` and the `FALSE` literal value is represented with `false`.
2. The `AND` operator is represented with `&&`.
3. The `OR` operator is represented with `||`.
4. The `XOR` operator is represented with `^`.
5. The `NOT` operator is represented with `!`.

Here is the first version of the program `bool.rb` that you need to type in (again, the row numbers are not part of the program source code).

``` ruby
1. # File bool.rb
2. #
3. a = false
4. b = false
5. result = a && b # && if for boolean AND
6. puts "Result: #{result}" # is going to print that the result is false.
```

If you run that with `ruby bool.rb`, it will print `Result: false`, which proves the first case of the truth table for `AND` operator.

Now, let's change `b` to be `true` and try the result again.

``` ruby
 1. # File bool.rb
 2. #
 3. a = false
 4. b = false
 5. result = a && b # && if for boolean AND
 6. puts "Result: #{result}" # is going to print that the result is false.
 7.
 8. b = true
 9. result = a && b
10. puts "Result: #{result}" # is going to print that the result is false.
```
If you run the above, new version of the program, it will print the following:

``` bash
$ ruby bool.rb
Result: false
Result: false
$
```

If we make both `true`, `a` and `b`, then the result is going to be `true`. Here is the new version:

``` ruby
 1. # File bool.rb
 2. #
 3. a = false
 4. b = false
 5. result = a && b # && if for boolean AND
 6. puts "Result: #{result}" # is going to print that the result is false.
 7.
 8. b = true
 9. result = a && b
10. puts "Result: #{result}" # is going to print that the result is false.
11. 
12. a = true
13. result = a && b
14. puts "Result: #{result}" # is going to print that the result is true.
```

If you run the new version of the program it will print this:

``` bash
$ ruby bool.rb
Result: false
Result: false
Result: true
$
```

The last result is `true`, because both `a` and `b` are true.

Let's try now the `OR` operator in Ruby. As we said above, the `OR` operator is represented with
the double-vertical-lines symbol. Here is the new version of the program:

``` ruby
 1. # File bool.rb
 2. #
 3. a = false
 4. b = false
 5. result = a && b # && if for boolean AND
 6. puts "(#{a} AND #{b}) Result: #{result}" # is going to print that the result is false.
 7. 
 8. b = true
 9. result = a && b
10. puts "(#{a} AND #{b}) Result: #{result}" # is going to print that the result is false.
11. 
12. a = true
13. result = a && b
14. puts "(#{a} AND #{b}) Result: #{result}" # is going to print that the result is true.
15. 
16. # ============= OR operator ======================
17. 
18. a = false
19. b = false
20. result = a || b # || is for the OR operator
21. puts "(#{a} OR #{b}) Result: #{result}" # is going to print false
22. 
```

This is an enhanced version of the `bool.rb` program. Besides the fact that it calculates the `OR` operator result for
`a` `false` and `b` `false`, it also has an improved version of the strings printed out to make it more clear what
we read at the end of the execution of the program.

If you run the above program, you will see this:

``` bash
$ ruby bool.rb
(false AND false) Result: false
(false AND true) Result: false
(true AND true) Result: true
(false OR false) Result: false
$
```

As you can see, the `||` returned `false`, because both operands are `false`.

But if we change `b` to be `true`, then we can see the `||` result being `true` too:

``` ruby
 1. # File bool.rb
 2. #
 3. a = false
 4. b = false
 5. result = a && b # && if for boolean AND
 6. puts "(#{a} AND #{b}) Result: #{result}" # is going to print that the result is false.
 7. 
 8. b = true
 9. result = a && b
10. puts "(#{a} AND #{b}) Result: #{result}" # is going to print that the result is false.
11. 
12. a = true
13. result = a && b
14. puts "(#{a} AND #{b}) Result: #{result}" # is going to print that the result is true.
15. 
16. # ============= OR operator ======================
17. 
18. a = false
19. b = false
20. result = a || b # || is for the OR operator
21. puts "(#{a} OR #{b}) Result: #{result}" # is going to print false
22. 
23. b = true
24. result = a || b # || is for the OR operator
25. puts "(#{a} OR #{b}) Result: #{result}" # is going to print true
26. 
```

If you run the above program, you will get this:

``` ruby
$ ruby bool.rb
(false AND false) Result: false
(false AND true) Result: false
(true AND true) Result: true
(false OR false) Result: false
(false OR true) Result: true
$
```

which proves that `a || b` is `true` if `b` is `true` too.

Let's see now an example with `XOR`. As we said earlier, the `XOR` operator in Ruby is `^`. 

This is the new version of the `bool.rb` program that includes an `XOR` example:

``` ruby
 1. # File bool.rb
 2. #
 3. a = false
 4. b = false
 5. result = a && b # && if for boolean AND
 6. puts "(#{a} AND #{b}) Result: #{result}" # is going to print that the result is false.
 7. 
 8. b = true
 9. result = a && b
10. puts "(#{a} AND #{b}) Result: #{result}" # is going to print that the result is false.
11. 
12. a = true
13. result = a && b
14. puts "(#{a} AND #{b}) Result: #{result}" # is going to print that the result is true.
15. 
16. # ============= OR operator ======================
17. 
18. a = false
19. b = false
20. result = a || b # || is for the OR operator
21. puts "(#{a} OR #{b}) Result: #{result}" # is going to print false
22. 
23. b = true
24. result = a || b # || is for the OR operator
25. puts "(#{a} OR #{b}) Result: #{result}" # is going to print true
26. 
27. # ============= XOR operator =====================
28. 
29. a = false
30. b = false
31. result = a ^ b # ^ is for the XOR operator
32. puts "(#{a} XOR #{b}) Result: #{result}" # is going to print false
33. 
```

If you run this, it will print the following:

``` ruby
$ ruby bool.rb
(false AND false) Result: false
(false AND true) Result: false
(true AND true) Result: true
(false OR false) Result: false
(false OR true) Result: true
(false XOR false) Result: false
$
```

The last entry is for the `XOR` operator.

If we make one of the 2 operands `true`, then the `XOR` result is going to be `true`. This is the new version of the
program:

``` ruby
 1. # File bool.rb
 2. #
 3. a = false
 4. b = false
 5. result = a && b # && if for boolean AND
 6. puts "(#{a} AND #{b}) Result: #{result}" # is going to print that the result is false.
 7. 
 8. b = true
 9. result = a && b
10. puts "(#{a} AND #{b}) Result: #{result}" # is going to print that the result is false.
11. 
12. a = true
13. result = a && b
14. puts "(#{a} AND #{b}) Result: #{result}" # is going to print that the result is true.
15. 
16. # ============= OR operator ======================
17. 
18. a = false
19. b = false
20. result = a || b # || is for the OR operator
21. puts "(#{a} OR #{b}) Result: #{result}" # is going to print false
22. 
23. b = true
24. result = a || b # || is for the OR operator
25. puts "(#{a} OR #{b}) Result: #{result}" # is going to print true
26. 
27. # ============= XOR operator =====================
28. 
29. a = false
30. b = false
31. result = a ^ b # ^ is for the XOR operator
32. puts "(#{a} XOR #{b}) Result: #{result}" # is going to print false
33. 
34. a = true
35. result = a ^ b # ^ is for the XOR operator
36. puts "(#{a} XOR #{b}) Result: #{result}" # is going to print true
37. 
```

If you run that, it will print:

``` bash
$ ruby bool.rb
(false AND false) Result: false
(false AND true) Result: false
(true AND true) Result: true
(false OR false) Result: false
(false OR true) Result: true
(false XOR false) Result: false
(true XOR false) Result: true
$
```

But, if we make both `a` and `b` `true`, then the result is going to be `false`, again. Try this new version:

``` ruby
 1. # File bool.rb
 2. #
 3. a = false
 4. b = false
 5. result = a && b # && if for boolean AND
 6. puts "(#{a} AND #{b}) Result: #{result}" # is going to print that the result is false.
 7. 
 8. b = true
 9. result = a && b
10. puts "(#{a} AND #{b}) Result: #{result}" # is going to print that the result is false.
11. 
12. a = true
13. result = a && b
14. puts "(#{a} AND #{b}) Result: #{result}" # is going to print that the result is true.
15. 
16. # ============= OR operator ======================
17. 
18. a = false
19. b = false
20. result = a || b # || is for the OR operator
21. puts "(#{a} OR #{b}) Result: #{result}" # is going to print false
22. 
23. b = true
24. result = a || b # || is for the OR operator
25. puts "(#{a} OR #{b}) Result: #{result}" # is going to print true
26. 
27. # ============= XOR operator =====================
28. 
29. a = false
30. b = false
31. result = a ^ b # ^ is for the XOR operator
32. puts "(#{a} XOR #{b}) Result: #{result}" # is going to print false
33. 
34. a = true
35. result = a ^ b # ^ is for the XOR operator
36. puts "(#{a} XOR #{b}) Result: #{result}" # is going to print true
37. 
38. b = true
39. result = a ^ b # ^ is for the XOR operator
40. puts "(#{a} XOR #{b}) Result: #{result}" # is going to print false
41. 
```

If you run the above, you will get this:

``` bash
$ ruby bool.rb
(false AND false) Result: false
(false AND true) Result: false
(true AND true) Result: true
(false OR false) Result: false
(false OR true) Result: true
(false XOR false) Result: false
(true XOR false) Result: true
(true XOR true) Result: false
$
```

Finally, let's see the `NOT` operator in Ruby. As we said earlier, this is the `!` operator. This is the new version of
the `bool.rb` program:

``` ruby
 1. # File bool.rb
 2. #
 3. a = false
 4. b = false
 5. result = a && b # && if for boolean AND
 6. puts "(#{a} AND #{b}) Result: #{result}" # is going to print that the result is false.
 7. 
 8. b = true
 9. result = a && b
10. puts "(#{a} AND #{b}) Result: #{result}" # is going to print that the result is false.
11. 
12. a = true
13. result = a && b
14. puts "(#{a} AND #{b}) Result: #{result}" # is going to print that the result is true.
15. 
16. # ============= OR operator ======================
17. 
18. a = false
19. b = false
20. result = a || b # || is for the OR operator
21. puts "(#{a} OR #{b}) Result: #{result}" # is going to print false
22. 
23. b = true
24. result = a || b # || is for the OR operator
25. puts "(#{a} OR #{b}) Result: #{result}" # is going to print true
26. 
27. # ============= XOR operator =====================
28. 
29. a = false
30. b = false
31. result = a ^ b # ^ is for the XOR operator
32. puts "(#{a} XOR #{b}) Result: #{result}" # is going to print false
33. 
34. a = true
35. result = a ^ b # ^ is for the XOR operator
36. puts "(#{a} XOR #{b}) Result: #{result}" # is going to print true
37. 
38. b = true
39. result = a ^ b # ^ is for the XOR operator
40. puts "(#{a} XOR #{b}) Result: #{result}" # is going to print false
41. 
42. # ============= NOT operator =====================
43. 
44. a = false
45. result = !a # ! is for the NOT operator
46. puts "(NOT #{a}) Result: #{result}" # is going to print true
47. 
```

If you run the above program, it will print:

``` bash
$ ruby bool.rb
(false AND false) Result: false
(false AND true) Result: false
(true AND true) Result: true
(false OR false) Result: false
(false OR true) Result: true
(false XOR false) Result: false
(true XOR false) Result: true
(true XOR true) Result: false
(NOT false) Result: true
$
```

The last line is for the `NOT` (`!`) operator. Because `a` is `false`, the result is `true`.

## Boolean Operator Precedence

Let's now try some more complex boolean expressions. For example, let's try that on the irb console:
 
``` ruby
2.2.3 :001 > a = true
 => true 
2.2.3 :002 > b = false
 => false 
2.2.3 :003 > c = true
 => true 
2.2.3 :004 > a && b && c
 => false 
2.2.3 :005 > 
```
We now have 3 boolean operands, `a`, `b` and `c` and the expression `a && b && c`. The result if `false`, because 
this expression is `true` only if all operands are `true`, which is not the case. 

Actually, in the above expression, the `c` is not evaluated at all. Since the `a && b` already return `false` and the
next operand is `&&`, then `c` is not evaluated. Ruby knows that the result is going to be `false`. This is the so called
short-circuit logic. 

Let's try another example (continuing the previous one):

``` ruby
2.2.3 :005 > a || b || c
 => true 
2.2.3 :006 > 
```

Now this combines the 3 operands with the `||` boolean operator. The result is `true` because at least 1 is `true`. 

Another example:

``` ruby
2.2.3 :006 > a || b && c
 => true 
2.2.3 :007 > 
```

This one returns `true`. But pay attention that the `&&` operator is of higher priority than the `||` operator and it will
be evaluated first. The result of `b && c` is `false`. Then `a || false` returns `true` because `a` is `true`. 
So, the priority of `&&` vs `||` is like the priority of the multiplication `*` vs addition `+`. 

Let's see, now, how we can change the result if we change the order of execution of the operators logic. 

Let's start with this example:

``` irb
2.2.3 :007 > a = true
 => true 
2.2.3 :008 > b = true
 => true 
2.2.3 :009 > c = false
 => false 
2.2.3 :010 > a || b && c
 => true 
2.2.3 :011 > 
```

Since the `&&` operator is of higher priority/precedence than the `||` operator, the `b && c` is first executed and we get `false`.
Then we have `a || false` which returns `true`. 

But, we can use parentheses to change the order of execution. The parentheses are evaluated first:

``` irb
2.2.3 :011 > (a || b) && c
 => false 
2.2.3 :012 > 
```

As you can see, the use of parentheses to execute the `||` logic first, changes the final result to `false`. This is because `a || b` is
`true`, and then, `true && c` is `false` because `c` is `false`.

Finally, the boolean operator precedence (priority) is the following:

1. `!`
2. `^`
3. `&&`
4. `||`

> *Information:* The full operator precedence for Ruby is given [here](https://ruby-doc.org/core-2.2.0/doc/syntax/precedence_rdoc.html)

## Trying Examples on `irb` Console

Don't forget that you can practice with the boolean operators on the `irb` console too, if this is easier for you.

Try that. Open a terminal on your operating system and start `irb`.

``` bash
$ irb
2.2.3 :001 > 
```

Then give commands to prove how the boolean operators and operands work. For example:

``` ruby
2.2.3 :001 > a = true
 => true 
2.2.3 :002 > b = false
 => false 
2.2.3 :003 > a || b
 => true 
2.2.3 :004 > 
```

## Closing Note

If you want, you can also watch the following video that describes the content of this chapter using some hands-on exercises inside Linux/Debian environment.
          
<div id="media-title-video-boolean-logic-and-boolean-operators.mp4">Boolean Logic And Boolean Operators</div>
<a href="https://player.vimeo.com/video/194571213"></a>

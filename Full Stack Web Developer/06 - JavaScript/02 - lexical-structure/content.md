Let's start by learning the basics of the lexical structure of JavaScript, like how the variables should be named, how
the statements should be terminated e.t.c.

### Case Sensitivity

JavaScript is a case sensitive language. This means that the name `Customer` is not equal to `customer`. Keep that in mind
when you name variables and functions or using a reserved word.

### Comments

Comments are pieces of text that we write in our source code file, in order to accompany our code with some 
descriptive explanation that would make next developer easier to understand what the code does, and basically
why it does it.

Comments are not taken into account by the language interpreter.
You remember that we used the characters `<!--` to start a comment in HTML and the character sequence `-->` to end it.
 
Similar feature exists in JavaScript too (like in all programming languages).
  
There are two types of comments in JavaScript:
  
#### Line-Level Comment

Line-level comments start with the character sequence `//` and expand till the end of the line the appear in. Everything 
from `//` till the end of the line is ignored by the language interpreter. This is an example:

``` javascript
var a = 8; // This is an integer
var b = 10;
```

Whereas as `var a = 8;` is a valid JavaScript code that will be interpreted by the JavaScript interpreter, the `// This is an integer` is completely ignored.
However, the `var b = 10;` is taken into account as a valid JavaScript code again, because it appears in its own
line, even if it follows the line-level comment.

#### Block-Level Comments

The block-level comments expand multiple lines. They are applied like the comments in CSS. We start the block with `/*` and we close the block
with `*/`

See to the following example:

``` javascript
/* 
These are two
integers
*/
var a = 8;
var b = 10;   
```

Whatever is inside the `/*...*/` is completely ignored.

### Literals

A literal is a data value that appears directly in a program. It explicitly and verbatim declares a value. The following are examples of literals:

``` javascript
12           // the number twelve
1.2          // the number one point two
"John Smith" // the text (or string) "John Smith". Literal text can be declared enclosed in double or single quotes
'Foo Bar'    // the text (or string) "Foo Bar". Literal text can be declared enclosed in double or single quotes
```

There are other more complex literals that you will learn about in the following chapters. For now, just make sure that you understand that
when we explicitly declare a value, this is a literal.

### Identifiers and Reserved Words

#### Identifiers

*Identifiers* are names that we give to variables and functions. You will learn about variables and functions later on. For the time being
you just need to know that variables and functions (usually) have names and their names are also called identifiers. 

There are some rules that need to be followed when defining an identifier.

1. An identifier needs to start with a letter, an underscore (`_`) or the dollar sign `$`.
2. Digits are not allowed as the first character of the identifier. This is to make easy for JavaScript interpreter to identify numbers.
3. An identifier cannot be a JavaScript reserved word (see next).
4. Otherwise, you can use any character from the Unicode set, but, for compatibility reasons, we usually use the [ASCII (latin) characters](http://www.asciitable.com/).

The following are valid identifiers:

* `customer`
* `_state`
* `$tag_element`
* `Product`
* `OrderElement`
* `Invoice1`

whereas the `1Invoice` is not a valid identifier, because it starts with the number `1`. 

Besides the rules for the validity of an identifier, there are some other rules that have to do with the style of your JavaScript code. For example,
both `customer_number` and `customerNumber` are valid JavaScript identifiers. But which one is preferred in the JavaScript world? 
It is the JavaScript style guides that define these extra rules. We recommend that you start studying the 
[Google JavaScript Style Guide](https://google.github.io/styleguide/javascriptguide.xml), little-by-little. This is the style rules that we will 
be following throughout the course when writing JavaScript programs. 

#### Reserved Words

The reserved words are words that the JavaScript language has reserved for its internal use and developers cannot use them to name 
variables or functions. They are also called language keywords. 

Here is a list of the words that you should avoid using in order to name your own variables and functions:

<table>
  <tr><td>break</td><td>delete</td><td>function</td><td>return</td><td>typeof</td></tr>
  <tr><td>case</td><td>do</td><td>if</td><td>switch</td><td>var</td></tr>
  <tr><td>catch</td><td>else</td><td>in</td><td>this</td><td>void</td></tr>
  <tr><td>continue</td><td>false</td><td>instanceof</td><td>throw</td><td>while</td></tr>
  <tr><td>debugger</td><td>finally</td><td>new</td><td>true</td><td>with</td></tr>
  <tr><td>default</td><td>for</td><td>null</td><td>try</td><td></td></tr>
  <tr><td>class</td><td>const</td><td>enum</td><td>export</td><td>extends</td></tr>
  <tr><td>import</td><td>super</td><td></td><td></td><td></td></tr>
  <tr><td>implements</td><td>let</td><td>private</td><td>public</td><td>yield</td></tr>
  <tr><td>interface</td><td>package</td><td>protected</td><td>static</td><td></td></tr>
  <tr><td>arguments</td><td>eval</td><td></td><td></td><td></td></tr>
  <tr><td>abstract</td><td>double</td><td>goto</td><td>native</td><td>static</td></tr>
  <tr><td>boolean</td><td>enum</td><td>implements</td><td>package</td><td>super</td></tr>
  <tr><td>byte</td><td>export</td><td>import</td><td>private</td><td>synchronized</td></tr>
  <tr><td>char</td><td>extends</td><td>int</td><td>protected</td><td>throws</td></tr>
  <tr><td>class</td><td>final</td><td>interface</td><td>public</td><td>transient</td></tr>
  <tr><td>const</td><td>float</td><td>long</td><td>short</td><td>volatile</td></tr>
  <tr><td>arguments</td><td>encodeURI</td><td>Infinity</td><td>Number</td><td>RegExp</td></tr>
  <tr><td>Array</td><td>encodeURIComponent</td><td>isFinite</td><td>Object</td><td>String</td></tr>
  <tr><td>Boolean</td><td>Error</td><td>isNaN</td><td>parseFloat</td><td>SyntaxError</td></tr>
  <tr><td>Date</td><td>eval</td><td>JSON</td><td>parseInt</td><td>TypeError</td></tr>
  <tr><td>decodeURI</td><td>EvalError</td><td>Math</td><td>RangeError</td><td>undefined</td></tr>
  <tr><td>decodeURIComponent</td><td>Function</td><td>NaN</td><td>ReferenceError</td><td>URIError</td></tr>
</table>

You do not have to learn them by heart. You can always reference this table, but, again, you will learn the 
words that you should not be using for your own naming, by experience.

### Terminating Statements

Like many programming languages, JavaScript uses the `;` to separate one statement from the other. However, these
are not required in all cases. You can usually omit the `;` symbol:

* at the end of a program
* if the next token is a closing curly brace `}`

However, we encourage to use `;` to terminate statements even in cases in which this might be optional. 






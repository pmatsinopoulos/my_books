[Twitter Bootstrap](http://getbootstrap.com/) is a set of CSS and JavaScript code that you can base your own HTML, CSS and JavaScript code on,
in order to quickly have a Web site or Web application that is responsive, with a mobile first design approach.

In other words, it provides you with some CSS classes and JavaScript code that you can just go and use it. You apply
the classes and you use the JavaScript modules and quickly have your Web Site and your Web Application have features
that it would have taken you a lot of effort to develop from scratch.

> *Note:* We have not talked before about JavaScript and will not talk until the Introduction to Programming section.
Also, this section, `Twitter Bootstrap Part A`, will not deal with the JavaScript related features of Twitter Bootstrap.
This will be dealt with after the `JavaScript` section.

## The Bare Bones Twitter Bootstrap Page

Let's start by creating the first Twitter Bootstrap page. Create a new file `index.html` and put the following content inside:

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Bare Bones Twitter Bootstrap Page</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- jQuery is a prerequisite for Bootstrap JavaScript library to work properly -->
    <script src="https://code.jquery.com/jquery-2.1.4.js"></script>

    <!-- Bootstrap JavaScript Files -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <!-- for IE8 or earlier -->
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

  </body>
</html>

```

This is a page that does not have any valuable content. Its `body` element is empty. However:

1. It references the Bootstrap CSS library.
2. It references the jQuery library, which is a JavaScript library necessary for Twitter Bootstrap JavaScript modules.
3. It provisions for IE8 or earlier by
    1. Using the `meta` tag `http-equiv` with adequate values. You can read more about this [here](http://stackoverflow.com/a/6771584/658469). And
    2. loading the corresponding HTML5 shim and Respond libraries. Don't worry too much about that now, since these are JavaScript libraries.

> *Note:* Although we are referencing the Twitter Bootstrap JavaScript libraries, we will not directly use the Twitter Bootstrap JavaScript
features now. Only implicitly. The actual training on the Twitter Bootstrap JavaScript features will take place after the JavaScript section.

If you load the above page on your browser, you will see nothing. But, all the Twitter Bootstrap features would be loaded.

## Containers

When you start your page layout, you need to decide on the container style that would include your page content. There are 2 types of containers:

1. `container`
2. `container-fluid`

You apply one of them by setting the corresponding `div` element (or equivalent block element) to have a class equal to the name of the container.

Enhance the content of your page so that it is like the following:

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Bare Bones Twitter Bootstrap Page</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="stylesheets/index.css" type="text/css">

    <!-- jQuery is a prerequisite for Bootstrap JavaScript library to work properly -->
    <script src="https://code.jquery.com/jquery-2.1.4.js"></script>

    <!-- Bootstrap JavaScript Files -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="container">
      This is a container
    </div>
    <div class="container-fluid">
      This is a container fluid
    </div>
  </body>
</html>
```

1. We have added a reference to a local CSS file named `stylesheets/index.css`. We have put that exactly after the Twitter Bootstrap CSS reference. We will put inside this file
our Web page specific CSS rules. This files needs to be after the Twitter Bootstrap CSS reference, because it will be relying on it.
2. We have created two divs that would function as our page containers. The first div is a `container` whereas the second div is a `container-fluid`.

Create the file `index.css` inside the folder `stylesheets` and add the following content:

``` css
.container {
    background-color: #8DC5CC;
}

.container-fluid {
    background-color: #aaad21;
}
```

> **Important:** Now that you are using Twitter Bootstrap, you will not need to write CSS reset rules like, for example, `* {box-sizing: border-box}`. This is because
> Twitter Bootstrap itself, has a series of defaults that make very good sense and they are aligned with the rest of the Twitter Bootstrap classes. If you believe that
> you needs such rules, do it carefully in order to avoid destroying the already offered Twitter functionality.

As you can imagine, this is used to apply specific, different colors to the two containers so that we can see how they are put on the page.

Save all files and load `index.html` page on your browser. What you will see, should be something like the following:


![Container VS Container Fluid](./images/container-vs-container-fluid.jpg) 
 
As you can see above, the `container` has left and right margins, whereas the `container-fluid` does not have and covers the whole width of the page. 
`container` margins are not fixed-width. Their width changes depending on the viewport width.

On the other hand, both containers have left and right paddings, equal to `15px`.

Note that even if you use a `container`, when you shrink the width of your browser window, so that it becomes less than 768px wide, the `container` loses its left and right
margins, and, essentially, behaves like the `container-fluid`. In other words, this page on an Apple iPhone 6 device, would be displayed like this:

![./images/Container VS Container Fluid on iPhone 6](./images/container-vs-container-fluid-on-iphone-6-simulation.jpg)

so, `container` and `container-fluid` in that case would be the same.

> *Note:* Although you may have one container below the other, you should not nest containers, one within the other. This is not a good practice and your layout will not
be correctly put on your page, due to the container paddings.

## Grid System

The grid system, i.e. dividing your layout into rows and columns, is a good practice to design the layout of your page. Twitter Bootstrap comes with handy classes that
will allow you to scale your layout up to 12 columns, as the device or viewport size increases.

Hence, whenever you want to divide your page into a series of columns, you have to:

1. Decide on the container type.
2. Inside the container add a `row` class div.
3. Inside the `row` class div, add one or more `col-ss-i` class div elements.

We will explain what a `col-ss-i` class is using some examples:

### Example of 1 row with 12 columns

Let's create a page with 1 row and 12 columns layout as follows:

![./images/A page with 1 row and 12 columns](./images/one-row-twelve-columns-layout.jpg)

In order to create this page, you will need to use a `container` div, a `row` div and 12 `col-ss-i` divs. The HTML page should be as follows:

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Bare Bones Twitter Bootstrap Page</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="stylesheets/index.css" type="text/css">

    <!-- jQuery is a prerequisite for Bootstrap JavaScript library to work properly -->
    <script src="https://code.jquery.com/jquery-2.1.4.js"></script>

    <!-- Bootstrap JavaScript Files -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-xs-1">
          1
        </div>
        <div class="col-xs-1">
          2
        </div>
        <div class="col-xs-1">
          3
        </div>
        <div class="col-xs-1">
          4
        </div>
        <div class="col-xs-1">
          5
        </div>
        <div class="col-xs-1">
          6
        </div>
        <div class="col-xs-1">
          7
        </div>
        <div class="col-xs-1">
          8
        </div>
        <div class="col-xs-1">
          9
        </div>
        <div class="col-xs-1">
          10
        </div>
        <div class="col-xs-1">
          11
        </div>
        <div class="col-xs-1">
          12
        </div>
      </div>
    </div>
  </body>
</html>
```
with the following CSS file (named `index.css`):

``` css
.container {
    background-color: #8DC5CC;
}

.container .row div {
    background-color: #4e9013;
    padding: 10px 0;
    border: 1px solid green;
    color: white;
    text-align: center;
}
```

As you can see in the HTML file, `index.html`, we have used a `container` and inside it we have introduced a `row` class div. Then for each one of the 12 columns, we have used
a `col-xs-i` class div, where `i` is equal to `1`. `xs` stands for Extra Small, but we will explain that later on. Now, you need to understand that since we want to divide the
12 columns-wide `row` into actual 12 columns, we need to use the number `1` for `i`, which essentially says that each `div` with class `col-xs-1` would occupy exactly `1/12` of the
available width.

### Example 2 rows grid, Second with 6 columns

Let's add one more row to our grid page. But this time, let's assume that we want 6 columns on the 2nd row, like this:

![./images/2 Rows with 2nd Having 6 Columns](./images/two-rows-second-six-columns.jpg)

As you can see above, each one of the columns of the 2nd row occupy double the column width of the columns of the 1st row. Maybe you can imagine that in order to achieve that,
we should use the `col-xs-2` class (instead of the `col-xs-1` class).

This is the full HTML code:
``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Bare Bones Twitter Bootstrap Page</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="stylesheets/index.css" type="text/css">

    <!-- jQuery is a prerequisite for Bootstrap JavaScript library to work properly -->
    <script src="https://code.jquery.com/jquery-2.1.4.js"></script>

    <!-- Bootstrap JavaScript Files -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-xs-1">
          1
        </div>
        <div class="col-xs-1">
          2
        </div>
        <div class="col-xs-1">
          3
        </div>
        <div class="col-xs-1">
          4
        </div>
        <div class="col-xs-1">
          5
        </div>
        <div class="col-xs-1">
          6
        </div>
        <div class="col-xs-1">
          7
        </div>
        <div class="col-xs-1">
          8
        </div>
        <div class="col-xs-1">
          9
        </div>
        <div class="col-xs-1">
          10
        </div>
        <div class="col-xs-1">
          11
        </div>
        <div class="col-xs-1">
          12
        </div>
      </div>

      <div class="row">
        <div class="col-xs-2">
          1
        </div>
        <div class="col-xs-2">
          2
        </div>
        <div class="col-xs-2">
          3
        </div>
        <div class="col-xs-2">
          4
        </div>
        <div class="col-xs-2">
          5
        </div>
        <div class="col-xs-2">
          6
        </div>
      </div>
    </div>
  </body>
</html>
```
And this is the full CSS code (which is not critical to the creation of the grid, but it is only there to help us visualize the columns of the rows of the grid on our page):

``` css
.container {
    background-color: #8DC5CC;
}

.container .row:nth-of-type(1) div {
    background-color: #4e9013;
    padding: 10px 0;
    border: 1px solid green;
    color: white;
    text-align: center;
}

.container .row:nth-of-type(2) div {
    background-color: #902e07;
    padding: 10px 0;
    border: 1px solid #441180;
    color: white;
    text-align: center;
}
```

As you can see, the 2nd `row` inside the `container` has been into 6 columns of size `2` each, so that the total sum of their sizes sums up to 12. Or, you can think about it
this way too: If you want your 6 columns just divide 12 by 6 and the result will give you the size of each column, in this case, 2.

### Example 2 rows grid, Second 5 columns

There are cases in which the number of columns you wish to fit inside the 12 columns does not exactly divide number 12. For example, let's say that you want one row to be
has 5 columns, instead of 6. You need to decide which column will be bigger than the others. For example:

![2 Rows 2nd with 5 Columns](./images/two-rows-second-five-columns.jpg) 
 
As you can see above, the 2nd row has 5 columns, with 1st column being twice as wide as the next ones.

How would we accomplish this? Like that:

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Bare Bones Twitter Bootstrap Page</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="stylesheets/index.css" type="text/css">

    <!-- jQuery is a prerequisite for Bootstrap JavaScript library to work properly -->
    <script src="https://code.jquery.com/jquery-2.1.4.js"></script>

    <!-- Bootstrap JavaScript Files -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-xs-1">
          1
        </div>
        <div class="col-xs-1">
          2
        </div>
        <div class="col-xs-1">
          3
        </div>
        <div class="col-xs-1">
          4
        </div>
        <div class="col-xs-1">
          5
        </div>
        <div class="col-xs-1">
          6
        </div>
        <div class="col-xs-1">
          7
        </div>
        <div class="col-xs-1">
          8
        </div>
        <div class="col-xs-1">
          9
        </div>
        <div class="col-xs-1">
          10
        </div>
        <div class="col-xs-1">
          11
        </div>
        <div class="col-xs-1">
          12
        </div>
      </div>

      <div class="row">
        <div class="col-xs-4">
          1
        </div>
        <div class="col-xs-2">
          2
        </div>
        <div class="col-xs-2">
          3
        </div>
        <div class="col-xs-2">
          4
        </div>
        <div class="col-xs-2">
          5
        </div>
      </div>
    </div>
  </body>
</html>
```

The 2nd `row` has 5 column divs, which is expected, because we want 5 columns. But, the first column is now of size `4`, using the class `col-xs-4`. Also, all the 5 column
sizes add up to 12: `4 + 2 + 2 + 2 + 2`. 

Of course, this is not the only way for you to divide your row to 5 columns. For example you could use this:

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Bare Bones Twitter Bootstrap Page</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="stylesheets/index.css" type="text/css">

    <!-- jQuery is a prerequisite for Bootstrap JavaScript library to work properly -->
    <script src="https://code.jquery.com/jquery-2.1.4.js"></script>

    <!-- Bootstrap JavaScript Files -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-xs-1">
          1
        </div>
        <div class="col-xs-1">
          2
        </div>
        <div class="col-xs-1">
          3
        </div>
        <div class="col-xs-1">
          4
        </div>
        <div class="col-xs-1">
          5
        </div>
        <div class="col-xs-1">
          6
        </div>
        <div class="col-xs-1">
          7
        </div>
        <div class="col-xs-1">
          8
        </div>
        <div class="col-xs-1">
          9
        </div>
        <div class="col-xs-1">
          10
        </div>
        <div class="col-xs-1">
          11
        </div>
        <div class="col-xs-1">
          12
        </div>
      </div>

      <div class="row">
        <div class="col-xs-3">
          1
        </div>
        <div class="col-xs-2">
          2
        </div>
        <div class="col-xs-3">
          3
        </div>
        <div class="col-xs-2">
          4
        </div>
        <div class="col-xs-2">
          5
        </div>
      </div>
    </div>
  </body>
</html>
```
which, if you saved and loaded it on your browser, you would see this:

![./images/2 Rows 2nd 5 Columns 2nd Version](./images/two-rows-second-five-columns-version-2.jpg)

As you can see above, the 2nd row is, again, with 5 columns, but with a different size of first and third column. These two are of size `3` whereas all the other columns are of size
`2`. However, even in this case, the total column sizes add up to 12: `3 + 2 + 3 + 2 + 2`. 

### Different Display Widths

Twitter Bootstrap allows you to use different classes for your grid layout (and for other properties of your Web page style), according to the different display widths
that your Web page will be displayed on. In particular,
 
There are 4 key width breakpoints:
 
  
<table>
    <thead>
        <tr><th>Name</th><th>Symbol</th><th>Device Width</th></tr>
    </thead>
    <tbody>
        <tr><td>Extra Small</td><td><code>xs</code></td><td>&lt; 768px</td></tr>
        <tr><td>Small</td><td><code>sm</code></td><td>&gt;=768px</td></tr>
        <tr><td>Medium</td><td><code>md</code></td><td>&gt;=992px</td></tr>
        <tr><td>Large</td><td><code>lg</code></td><td>&gt;=1200px</td></tr>
    </tbody>
</table>  

and you are referring to them by their corresponding symbol, as part of the class name that you are using.

So, if you are using, for example, the class `col-xs-5` or `visible-xs`, this means that this class refers to the breakpoint `xs`, for devices
with width < 768px. However, further interpretation of each particular class depends on the class case itself. We will learn the most important classes
in this section.

The Twitter Bootstrap grid classes, that work based on the above 4 key breakpoints are:

* `col-xs-1`, `col-xs-2`, e.t.c. up to `col-xs-12` 
* `col-sm-1`, `col-sm-2`, e.t.c. up to `col-sm-12`
* `col-md-1`, `col-md-2`, e.t.c. up to `col-md-12`
* `col-lg-1`, `col-lg-2`, e.t.c. up to `col-lg-12`

But, what is the difference between `col-xs-2` vs `col-sm-2` for example?

They both occupy 2 columns. `col-xs-2` will occupy 2 columns for any display area width, but `col-sm-2`, will occupy 2 columns only for display widths that are
greater than or equal to 768px. `col-sm-2`, for display areas less than 768px, will not occupy 2 columns, but will stack 1 column above the other, as if they were 2 rows,
essentially each column occupying the whole 12 columns available width.

Let's see an example here. We are going to create a page with a row that has 6 columns, each one occupying 2 columns width. Let's write the following code into an HTML document.

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Bare Bones Twitter Bootstrap Page</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="stylesheets/index.css" type="text/css">

    <!-- jQuery is a prerequisite for Bootstrap JavaScript library to work properly -->
    <script src="https://code.jquery.com/jquery-2.1.4.js"></script>

    <!-- Bootstrap JavaScript Files -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-sm-2">
          1
        </div>
        <div class="col-sm-2">
          2
        </div>
        <div class="col-sm-2">
          3
        </div>
        <div class="col-sm-2">
          4
        </div>
        <div class="col-sm-2">
          5
        </div>
        <div class="col-sm-2">
          6
        </div>
      </div>
    </div>
  </body>
</html>
```
and the following CSS in the corresponding `index.css` file inside the `stylesheets` folder:

``` css
.container {
    background-color: #8DC5CC;
}

.container .row:nth-of-type(1) div {
    background-color: #4e9013;
    padding: 10px 0;
    border: 1px solid green;
    color: white;
    text-align: center;
}
```

If you save the above and then load the HTML page on your browser, you will see this:

![./images/One Row with 6 Columns Layout - Each One Occupying 2 Columns](./images/one-row-6-columns-2-columns-width.jpg)

As you can see in the HTML code, we are using the breakpoint `sm` and we instruct that each column occupies 2 of the available 12 columns. This will result on the row being divided
into 6 columns, but only for display areas with width greater than or equal to 768px. 

Enable the developer tools and shrink the browser window so that it has width exactly 768px. You will not see any significant difference on how your page is displayed. All the
6 columns will be there. Horizontally arranged:

<div id="media-title-video-shrinking-browser-to-768px-breakpoint.mp4">How shrinking the display width to 768px keeps the columns horizontally arrange</div>
<a href="https://player.vimeo.com/video/194258550"></a>
           
Things will change when you shrink 1 pixel more, to 767px. You will see this:

![./images/Shrinking on 767px Makes the Columns Stack](./images/page-width-is-shrinked-to-767px-below-the-small-breakpoint.jpg)

This happened because we have used the class `col-sm-2`. Again, this class stacks the columns one on top of the other for each display width less than 768px, and keeps the
columns horizontal for any width greater than or equal to 768px. 

As you can see from the above picture, the initially 2-columns wide columns, are now 12-columns wide, occupying the whole row. The nice thing with Bootstrap, is that you 
can apply multiple classes of different breakpoints on the same div, in order to adapt the grid layout for different devices. 

See the following example, in order to understand what we mean. Let's suppose that we want for small devices and above to have 6 columns, but for smaller devices (less than 768px),
we do not want 1 column per row, but 2 columns per row. 

Hence, we want:

1. For small devices or larger, we want 6 columns. Hence, we need to use `col-sm-2` class for the divs (`sm` for small and `2` for 6-columns, since `12 / 6` gives `2`).
2. For extra small devices, we want 2 columns per row. Hence, we need to use `col-xs-6` class for the divs (`xs` for extra small and `6` for 2-columns, sinde `12 / 2` gives `6`).

Let's try that. Change the content of the HTML page above, in order to be:

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Bare Bones Twitter Bootstrap Page</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="stylesheets/index.css" type="text/css">

    <!-- jQuery is a prerequisite for Bootstrap JavaScript library to work properly -->
    <script src="https://code.jquery.com/jquery-2.1.4.js"></script>

    <!-- Bootstrap JavaScript Files -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-xs-6 col-sm-2">
          1
        </div>
        <div class="col-xs-6 col-sm-2">
          2
        </div>
        <div class="col-xs-6 col-sm-2">
          3
        </div>
        <div class="col-xs-6 col-sm-2">
          4
        </div>
        <div class="col-xs-6 col-sm-2">
          5
        </div>
        <div class="col-xs-6 col-sm-2">
          6
        </div>
      </div>
    </div>
  </body>
</html>
```
If you save the above and reload your page, while it is on 767px width (or smaller) you will see that now, your page has 2 columns per row:

![./images/Two Columns Layout For Extra Small Devices](./images/two-columns-per-row-on-extra-small-devices.jpg)

Whereas, if you enlarge your display area to have width greater than or equal to 768px, you will see that you page has 6 columns per row.

This is how the responsiveness of your grid is achieved.

> *Note:* One might say. Hold on! When on extra small devices, the columns inside the div, have number suffix (-`6`) that adds up to 36, not to 12. You need to know here that
Twitter Bootstrap will automatically wrap the columns above the 12th to a new row.

The previous Web page had 1 grid layout breakpoint actually. The 768px. Whatever was below that vs whatever was at that point or larger. You can apply the same concept to
a second breakpoint on the same grid. For example, you may want the number of columns to be 3 for display areas greater than 768px and 6 for display areas greater than 
or equal to 992px. 

So, what we want is the following:

1. For extra small devices, 2 columns per row (hence, `col-xs-6`).
2. For small devices, 3 columns per row (hence, `col-sm-4`).
3. For medium devices or larger, 6 columns per row (hence, `col-md-2`).
 
Now that we know what we want to achieve, it is pretty simple. Apply the above classes to your column divs and you are done:
 
``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Bare Bones Twitter Bootstrap Page</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="stylesheets/index.css" type="text/css">

    <!-- jQuery is a prerequisite for Bootstrap JavaScript library to work properly -->
    <script src="https://code.jquery.com/jquery-2.1.4.js"></script>

    <!-- Bootstrap JavaScript Files -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-xs-6 col-sm-4 col-md-2">
          1
        </div>
        <div class="col-xs-6 col-sm-4 col-md-2">
          2
        </div>
        <div class="col-xs-6 col-sm-4 col-md-2">
          3
        </div>
        <div class="col-xs-6 col-sm-4 col-md-2">
          4
        </div>
        <div class="col-xs-6 col-sm-4 col-md-2">
          5
        </div>
        <div class="col-xs-6 col-sm-4 col-md-2">
          6
        </div>
      </div>
    </div>
  </body>
</html>
```
 
Now, if you scale your browser width to be, for example 800px, then you will see 3 columns on each row.

![./images/3 Columns On Medium Devices](./images/three-columns-for-medium-devices.jpg)

But if you scale it even more, to be larger than 992px wide, it will display 6 columns per row.

### Offseting Columns

We will close this first encounter with Twitter Bootstrap, and in particular, with its capability to design your responsive grid layout, with the concept of offset.

There are some cases in which you want to put your content so that it does not occupy the whole page width, still being limited to specific number of columns, and rest of
the available width space to be blank.

Let's see an example:

![./images/Content in the Middle Using Offset](./images/content-in-the-middle-using-offset.jpg)

As you can see above, we have a 2nd row that has 1 column occupying 2-columns width. Left to it, there is blank space equal to 5-columns width. Same on the right.

![./images/Left and Right 5 column width Blank Space](./images/content-in-the-middle-using-offset-5-column-width-left-and-right.jpg)

This is accomplished using the classes that have the "offset" characteristic. Here is the code for the HTML page:
 
``` html
 <!DOCTYPE html>
 <html>
   <head>
     <meta charset="utf-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
     <title>Bare Bones Twitter Bootstrap Page</title>
 
     <!-- Bootstrap CSS files -->
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
           integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
 
     <!-- Custom CSS -->
     <link rel="stylesheet" href="stylesheets/index.css" type="text/css">
 
     <!-- jQuery is a prerequisite for Bootstrap JavaScript library to work properly -->
     <script src="https://code.jquery.com/jquery-2.1.4.js"></script>
 
     <!-- Bootstrap JavaScript Files -->
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
             integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
 
     <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
     <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
     <!--[if lt IE 9]>
       <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
       <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
     <![endif]-->
   </head>
   <body>
     <div class="container">
       <div class="row">
         <div class="col-xs-1">
           1
         </div>
         <div class="col-xs-1">
           2
         </div>
         <div class="col-xs-1">
           3
         </div>
         <div class="col-xs-1">
           4
         </div>
         <div class="col-xs-1">
           5
         </div>
         <div class="col-xs-1">
           6
         </div>
         <div class="col-xs-1">
           7
         </div>
         <div class="col-xs-1">
           8
         </div>
         <div class="col-xs-1">
           9
         </div>
         <div class="col-xs-1">
           10
         </div>
         <div class="col-xs-1">
           11
         </div>
         <div class="col-xs-1">
           12
         </div>
       </div>
 
       <div class="row">
         <div class="col-xs-offset-5 col-xs-2">
           middle
         </div>
       </div>
     </div>
   </body>
 </html>
```

and the content of the `stylesheets/index.css` file:

``` css
.container .row:nth-of-type(1) div {
    background-color: #4e9013;
    padding: 10px 0;
    border: 1px solid green;
    color: white;
    text-align: center;
}

.container .row:nth-of-type(2) div {
    background-color: #902e07;
    padding: 10px 0;
    border: 1px solid #441180;
    color: white;
    text-align: center;
}
```

As you can read in the HTML part, the 2nd row has only 1 div, the one sitting in the middle, with size specified by `col-xs-2`. However, it is also attributed with the class
`col-xs-offset-5` which pushes it to the right for a space equal to 5 columns width.

## Twitter Bootstrap Defaults

Before we close this chapter, I would like to quickly go you through the most important defaults that one takes by including Twitter Bootstrap and compare them to the
defaults without it.

<table style="white-space: nowrap;">
    <thead>
        <tr><th></th><th>Twitter Bootstrap</th><th>Without Twitter Bootstrap</th></tr>
    </thead>
    <tbody>
        <tr><td><code>html</code> element <code>box-sizing</code></td><td>border-box</td><td>content-box</td></tr>
        <tr><td><code>html</code> element <code>font-family</code></td><td>sans-serif</td><td>Times</td></tr>
        <tr><td><code>html</code> element <code>font-size</code></td><td>10px</td><td>16px</td></tr>
        <tr><td><code>body</code> element <code>font-family</code></td><td>"Helvetica Neue", Helvetica, Arial, sans-serif</td><td>Times</td></tr>
        <tr><td><code>body</code> element <code>font-size</code></td><td>14px</td><td>16px</td></tr>
        <tr><td><code>body</code> element <code>line-height</code></td><td>1.42857143</td><td>normal</td></tr>
        <tr><td><code>body</code> element <code>color</code></td><td style="color: #333;">#333 hence a level of grey</td><td style="color: #000;">#000 hence black</td></tr>
        <tr><td><code>body</code> element <code>background-color</code></td><td style="background-color: #fff; color: #333;">#fff hence white</td><td style="background-color: rgba(0,0,0,0); color: #000;">rgba(0,0,0,0); hence transparent</td></tr>
        <tr><td><code>body</code> element <code>box-sizing</code></td><td>border-box</td><td>content-box</td></tr>
        <tr><td><code>body</code> element <code>margin</code></td><td>0</td><td>8px</td></tr>
    </tbody>
</table>

You can read more about the Twitter Bootstrap defaults if you download Twitter Bootstrap, locally on your computer. 
You can do that [by clicking on this link](http://getbootstrap.com/getting-started/#download) and then clicking on the button `Download Bootstrap`. This
will do download, among the others, ready CSS non-minified code (look for file: `css/bootstrap.css`).

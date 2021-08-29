We continue working on Twitter Bootstrap projects and we will now build a project that will work as your reference to
various Twitter Bootstrap components. It will be a long chapter, but it will allow you to have a good look at a long list of 
Twitter Bootstrap features.

Let's start.

### Basic Bootstrap Page with a Navigation Bar

We start with the basic Bootstrap page with a navigation bar, like the one we built on the previous chapter.

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Twitter Bootstrap Reference Page</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="stylesheets/main.css" type="text/css">

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

    <!-- Fixed navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <div class="navbar-header">
          <a class="navbar-brand" href="#">Bootstrap Ref. Page</a>
        </div>

        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

  </body>
</html>
```
with `stylesheets/main.css` having the content:
``` css
body {
    padding-top: 50px;
}
```
The above are exactly the same as we had in the previous chapter. Nothing new. If you save and reload the page, you will see this:
![./images/Starting with a Navigation Bar](./images/starting-with-a-navigation-bar.jpg)

### Add a Dropdown Menu

We will now learn how we can add a drop down menu. Like this:

![./images/Dropdown Menu on Navigation Bar](./images/drop-down-menu-on-navigation-bar.jpg)

This is very easy. One has to add an extra `li` item to the list of menu items. This new `li` item needs to have another list included, that will be the list of options inside the
dropdown menu. Like this:

``` html
<!-- Drop down Menu -->
<li class="dropdown">
  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
  <ul class="dropdown-menu">
    <li><a href="#">Action</a></li>
    <li><a href="#">Another action</a></li>
    <li><a href="#">Something else here</a></li>
    <li role="separator" class="divider"></li>
    <li class="dropdown-header">Nav header</li>
    <li><a href="#">Separated link</a></li>
    <li><a href="#">One more separated link</a></li>
  </ul>
</li>
<!-- end of drop down Menu -->
```
Let's do that. We will add the above code to the `ul` that constitutes the menu options of the navigation bar. Hence, we are going to have this:

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Twitter Bootstrap Reference Page</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="stylesheets/main.css" type="text/css">

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

    <!-- Fixed navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <div class="navbar-header">
          <a class="navbar-brand" href="#">Bootstrap Ref. Page</a>
        </div>

        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>

            <!-- Drop down Menu -->
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
            <!-- end of drop down Menu -->

          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

  </body>
</html>
```
If you save the above and load the page on your browser, you will see the new dropdown menu option, on the far right.

Let's give some notes about the code that has been used to build that dropdown menu:
![./images/Components Of Dropdown Menu](./images/dropdown-menu-list-item-components.jpg)

1. The listitem (`li`) that will work as a dropdown menu needs to have the class `dropdown`.
2. The dropdown listitem text, in our case `Dropdown`, needs to be wrapped into an anchor `a` element. This will make the pointer change, when the user hovers over it. Note that the anchor
needs to have the class `dropdown-toggle` and the `data-toogle` attribute equal to `dropdown`. 
3. In order to show a small caret right to the `Dropdown` word, that would indicate to the user the ability to click and unfold the menu, you need to add the `span` with class `caret` as
part of the anchor HTML content.
4. The list of options of the dropdown menu need to be given as an unsorted list (`ul`).
5. The `ul` needs to have the class `dropdown-menu`.
6. You can use a special, empty list item (`li`) with the class `divider` if you want to create a line in between menu items that would function as a divider.
7. You can also use another special list item (`li`) that would function as a sub-menu header and will not actually be part of the user options, wouldn't be possible to click and select.
This can be done if the list item has the class `dropdown-header`.

### Jumbotron

Twitter Bootstrap allows you to create jumbotrons, big areas that display a message, a header, on a very big font size. Let's do that.

1. After the `nav`, we are creating a `.container` div to include the content of our page, and
2. The first thing that we create is a div with class `.jumbotron`.

Put the following HTML code exactly below the end of the `nav` element:

``` html
<!-- main content container -->
<div class="container">

  <div class="jumbotron">
    <h1>Jumbotron</h1>
    <p class="lead">
      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 
      exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla 
      pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    </p>
  </div>

</div>
<!-- end of main content container -->
```
Also, make sure that the `stylesheets/main.css` file has the following content:
``` css
body {
    padding-top: 70px;
    padding-bottom: 70px;
}
```

If you do that and you save your page, you will see the following on your browser:

![./images/Jumbotron With Header and Lead Paragraph](./images/jumbotron-with-header-and-lead-paragraph-inside.jpg)

> Note that the space between the bottom side of the navigation bar and the top side of the jumbotron is created by the `padding-top` rule inside the `main.css` file.

The approach here is very simple. We use the class `jumbotron` for the div. We also use the header `h1` for the header text inside the jumbotron. Twitter Bootstrap applies
huge font size (in fact: 63px) on this particular `h1`, the `h1` that's inside a `.jumbotron` div.

Finally, we have already seen, in the previous chapter, the class `.lead` that is applied on the `p` element to make the text stand out.

### Headers With Horizontal Lines, a.k.a Page Headers

There are times that you want to create a header, i.e. a piece of text that stands out like a header, e.g. `h1`, or `h2`, and, below that to create a horizontal line:

You can quickly do that with the help of the `page-header` class. Add the following as the last element inside the main content container:

``` html
<div class="page-header">
  <h1>Page Header</h1>
</div>
```

If you save this and reload your page, you should look to something like this:

![./images/Page Header - Header With Bottom Border](./images/page-header.jpg)

### Buttons

We proceed our reference to Twitter Bootstrap by learning how we can create buttons.

1. All buttons should have the class `btn`.
2. Then, you can apply one class that deals with the color of the button:
    1. `btn-default`
    2. `btn-primary`
    3. `btn-success`
    4. `btn-info`
    5. `btn-warning`
    6. `btn-danger`
    7. Instead of a color, you can also apply a class to turn a button into a link: `btn-link`
3. Then you can specify the size of the button using a corresponding class:
    1. `btn-lg` for large buttons.
    2. specify no class for normal size buttons.
    3. `btn-sm` for small buttons.
    4. `btn-xs` for extra small buttons.
    
Let's see that in action. Before the closing end of your main content container, insert the following content:

``` html
<div class="page-header">
    <h1>Buttons</h1>
</div>

<h2>Extra Small Sizes</h2>
<p>
    <button type="button" class="btn btn-xs">btn btn-xs </button>
    <button type="button" class="btn btn-xs btn-default">btn btn-xs btn-default</button>
    <button type="button" class="btn btn-xs btn-primary">btn btn-xs btn-primary</button>
    <button type="button" class="btn btn-xs btn-success">btn btn-xs btn-success</button>
    <button type="button" class="btn btn-xs btn-info">btn btn-xs btn-info</button>
    <button type="button" class="btn btn-xs btn-warning">btn btn-xs btn-warning</button>
    <button type="button" class="btn btn-xs btn-danger">btn btn-xs btn-danger</button>
    <button type="button" class="btn btn-xs btn-link">btn btn-xs btn-link</button>
</p>

<h2>Small Sizes</h2>
<p>
    <button type="button" class="btn btn-sm">btn btn-sm</button>
    <button type="button" class="btn btn-sm btn-default">btn btn-sm btn-default</button>
    <button type="button" class="btn btn-sm btn-primary">btn btn-sm btn-primary</button>
    <button type="button" class="btn btn-sm btn-success">btn btn-sm btn-success</button>
    <button type="button" class="btn btn-sm btn-info">btn btn-sm btn-info</button>
    <button type="button" class="btn btn-sm btn-warning">btn btn-sm btn-warning</button>
    <button type="button" class="btn btn-sm btn-danger">btn btn-sm btn-danger</button>
    <button type="button" class="btn btn-sm btn-link">btn btn-sm btn-link</button>
</p>

<h2>Normal Sizes</h2>
<p>
    <button type="button" class="btn">btn</button>
    <button type="button" class="btn btn-default">btn btn-default</button>
    <button type="button" class="btn btn-primary">btn btn-primary</button>
    <button type="button" class="btn btn-success">btn btn-success</button>
    <button type="button" class="btn btn-info">btn btn-info</button>
    <button type="button" class="btn btn-warning">btn btn-warning</button>
    <button type="button" class="btn btn-danger">btn btn-danger</button>
    <button type="button" class="btn btn-link">btn btn-link</button>
</p>

<h2>Large Sizes</h2>
<p>
    <button type="button" class="btn btn-lg">btn btn-lg </button>
    <button type="button" class="btn btn-lg btn-default">btn btn-lg btn-default</button>
    <button type="button" class="btn btn-lg btn-primary">btn btn-lg btn-primary</button>
    <button type="button" class="btn btn-lg btn-success">btn btn-lg btn-success</button>
    <button type="button" class="btn btn-lg btn-info">btn btn-lg btn-info</button>
    <button type="button" class="btn btn-lg btn-warning">btn btn-lg btn-warning</button>
    <button type="button" class="btn btn-lg btn-danger">btn btn-lg btn-danger</button>
    <button type="button" class="btn btn-lg btn-link">btn btn-lg btn-link</button>
</p>
```

As you can see above, this is a series of header `h2` and `p` elements that apply all the combinations of classes we talked you about earlier.

Save your file and reload the page on your browser. You will see something like this:
![./images/Button Classes Demonstrated](./images/button-classes-demonstrated.jpg)

On this page, you can see how each button is displayed, according to the Twitter Bootstrap button classes that we have applied. It is really impressive, because without a single line of CSS
code, we have so much functionality for free. We only have to learn the various Twitter Bootstrap classes.

### Tables

We have already learned about the tables and how they should be used to display tabular data. Twitter Bootstrap comes with some useful classes on how to style tables. Let's start with a table
that does not have any Twitter Bootstrap class applied. So, it is only with its default style.

We continue appending content at the end of the main container. However, this time, I am giving you the whole page HTML content, just to make sure that we are aligned.

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Twitter Bootstrap Reference Page</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="stylesheets/main.css" type="text/css">

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

    <!-- Fixed navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <div class="navbar-header">
          <a class="navbar-brand" href="#">Bootstrap Ref. Page</a>
        </div>

        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>

            <!-- Drop down Menu -->
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
            <!-- end of drop down Menu -->

          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <!-- main content container -->
    <div class="container">

      <div class="jumbotron">
        <h1>Jumbotron</h1>
        <p class="lead">
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
          exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
          pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
        </p>
      </div>

      <div class="page-header">
        <h1>Page Header</h1>
      </div>

      <div class="page-header">
        <h1>Buttons</h1>
      </div>

      <h2>Extra Small Sizes</h2>
      <p>
        <button type="button" class="btn btn-xs">btn btn-xs </button>
        <button type="button" class="btn btn-xs btn-default">btn btn-xs btn-default</button>
        <button type="button" class="btn btn-xs btn-primary">btn btn-xs btn-primary</button>
        <button type="button" class="btn btn-xs btn-success">btn btn-xs btn-success</button>
        <button type="button" class="btn btn-xs btn-info">btn btn-xs btn-info</button>
        <button type="button" class="btn btn-xs btn-warning">btn btn-xs btn-warning</button>
        <button type="button" class="btn btn-xs btn-danger">btn btn-xs btn-danger</button>
        <button type="button" class="btn btn-xs btn-link">btn btn-xs btn-link</button>
      </p>

      <h2>Small Sizes</h2>
      <p>
        <button type="button" class="btn btn-sm">btn btn-sm</button>
        <button type="button" class="btn btn-sm btn-default">btn btn-sm btn-default</button>
        <button type="button" class="btn btn-sm btn-primary">btn btn-sm btn-primary</button>
        <button type="button" class="btn btn-sm btn-success">btn btn-sm btn-success</button>
        <button type="button" class="btn btn-sm btn-info">btn btn-sm btn-info</button>
        <button type="button" class="btn btn-sm btn-warning">btn btn-sm btn-warning</button>
        <button type="button" class="btn btn-sm btn-danger">btn btn-sm btn-danger</button>
        <button type="button" class="btn btn-sm btn-link">btn btn-sm btn-link</button>
      </p>
      
      <h2>Normal Sizes</h2>
      <p>
        <button type="button" class="btn">btn</button>
        <button type="button" class="btn btn-default">btn btn-default</button>
        <button type="button" class="btn btn-primary">btn btn-primary</button>
        <button type="button" class="btn btn-success">btn btn-success</button>
        <button type="button" class="btn btn-info">btn btn-info</button>
        <button type="button" class="btn btn-warning">btn btn-warning</button>
        <button type="button" class="btn btn-danger">btn btn-danger</button>
        <button type="button" class="btn btn-link">btn btn-link</button>
      </p>
      
      <h2>Large Sizes</h2>
      <p>
        <button type="button" class="btn btn-lg">btn btn-lg </button>
        <button type="button" class="btn btn-lg btn-default">btn btn-lg btn-default</button>
        <button type="button" class="btn btn-lg btn-primary">btn btn-lg btn-primary</button>
        <button type="button" class="btn btn-lg btn-success">btn btn-lg btn-success</button>
        <button type="button" class="btn btn-lg btn-info">btn btn-lg btn-info</button>
        <button type="button" class="btn btn-lg btn-warning">btn btn-lg btn-warning</button>
        <button type="button" class="btn btn-lg btn-danger">btn btn-lg btn-danger</button>
        <button type="button" class="btn btn-lg btn-link">btn btn-lg btn-link</button>
      </p>

      <div class="page-header">
        <h1>Tables</h1>
      </div>

      <h2>Shopping List</h2>
      <table>
        <tr><th colspan="2">Shopping List</th></tr>
        <tr><th>Item</th><th>Qt</th></tr>
        <tr><td>Cheese</td><td>1 kgr</td></tr>
        <tr><td>Rice</td><td>1.5 kgr</td></tr>
        <tr><td>Coffee</td><td>0.5 kgr</td></tr>
        <tr><td>Milk</td><td>1 ltr</td></tr>
        <tr><td>Wine</td><td>1 btl</td></tr>
      </table>

      <h2>Travel Plan</h2>
      <table>
        <tr><th colspan="2">Travel Plan</th></tr>
        <tr><th>Action</th><th>Due</th></tr>
        <tr><td>Book Ticket</td><td>Feb 20th</td></tr>
        <tr><td>Book Hotel</td><td>March 26th</td></tr>
        <tr><td>Buy Suitcase</td><td>April 20th</td></tr>
        <tr><td>Get Passport</td><td>April 30th</td></tr>
      </table>

    </div>
    <!-- end of main content container -->


  </body>
</html>
```

As you can see above, we have only added two simple `table` elements. If you save the above and reload the page, you will see this:
![./images/Tables Displayed Without Any Styling](./images/tables.jpg)

Let's try to apply some Twitter Bootstrap classes in order to style it. You will have a decent example without too much effort, if you only applied the class `table` on the `table` elements. 
Let's do that. Instead of just:
``` html
<table>
```
write
``` html
<table class="table">
```
If you reload the page on your browser, you will see that tables are displayed very nicely:
![./images/Tables With Class "table" Applied](./images/tables-with-table-class.jpg)

Pretty cool! Eh?

There are some more classes that you can try on tables, alongside the `table` class. Try to attach the class `table-striped` on the first table and the class `table-bordered` on the second one.
So, instead of:
``` html
<table class="table">
```
turn it to:
``` html
<table class="table table-striped">
```
for the first table, and to:
``` html
<table class="table table-bordered">
```
for the second table.

If you save and reload your page, you will see this:

![./images/First Table With Stripes, Second With Borders](./images/table-one-with-stripes-the-other-with-borders.jpg)

The `.table-striped` class makes the table have stripes, one row being with dark background and next one with bright one. The `.table-bordered` class adds borders to the table. 

You can definitely combine table classes. For example, try `table table-striped table-bordered` for the second table. You will get this:

![./images/Table Classes Combined - Stripes & Borders](./images/table-classes-combined.jpg)

Another nice feature of table classes is the class `.table-hover`, which will highlight the row the mouse hovers on. Let's try that. Set the class value for the first table to:
``` html
<table class="table table-hover">
```

If you save and load the page on your browser, you will see the table as it was with the `table` class only. But if you try to move your mouse pointer over the rows, you will
see how rows are highlighted as mouse moves over them.

<div id="media-title-video-table-hover-effect.mp4">Table hover effect and how rows are highlighted on mouse over</div>
<a href="https://player.vimeo.com/video/194259449"></a>
           
Another useful class is `.table-condensed` which will make sure that the rows have quite small height. Try that on the 2nd table alongside the other table classes that it already has:

``` html
<table class="table table-striped table-bordered table-condensed">
```
If you reload the page on your browser, you will see this:
![./images/Second Table With Condensed Style](./images/table-non-condensed-vs-condensed.jpg)
As you can see above, the condensed style on second table has significantly smaller height on its rows, if compared to the height of the rows of the first table.

Furthermore, Twitter Bootstrap offers a series of semantic classes that correspond to specific colors. When you apply those classes you quickly set the background-color of the corresponding row.

These classes are:

1. `active`
2. `success`
3. `info`
4. `warning`
5. `danger`

Let's apply them to the rows of the second table on our page. So, second table HTML fragment becomes as follows:
 
``` html
<table class="table table-striped table-bordered table-condensed">
    <tr><th colspan="2">Travel Plan</th></tr>
    <tr class="active"><th>Action</th><th>Due</th></tr>
    <tr class="success"><td>Book Ticket</td><td>Feb 20th</td></tr>
    <tr class="info"><td>Book Hotel</td><td>March 26th</td></tr>
    <tr class="warning"><td>Buy Suitcase</td><td>April 20th</td></tr>
    <tr class="danger"><td>Get Passport</td><td>April 30th</td></tr>
</table>
```
If you save the above and reload the page on your browser, you will see this:
![./images/Second Table With Contextual Classes Setting Row Background Color](./images/table-with-contextual-classes.jpg)

### Labels

There are sometimes that you want to create some kind of visual label, a tag. Like this:

![./images/Label Example - A Price Tag](./images/label-example.jpg)

This is very easily achieved with Twitter Bootstrap. You only have to enclose the content inside a `span` element and apply the class `label` plus one class for the color of the label:

1. `label-default`
2. `label-primary`
3. `label-success`
4. `label-info`
5. `label-warning`
6. `label-danger`

Let's add the following content at the end of the main content container:

``` html
<div class="page-header">
    <h1>Labels</h1>
</div>

<h4>
    <span class="label label-default">€20.00 - Default</span>
    <span class="label label-primary">€20.00 - Primary</span>
    <span class="label label-success">€20.00 - Success</span>
    <span class="label label-info">€20.00 - Info</span>
    <span class="label label-warning">€20.00 - Warning</span>
    <span class="label label-danger">€20.00 - Danger</span>
</h4>
```
If you save that and reload the page on your browser, you will see this:

![./images/Labels With Different Colors](./images/labels-with-different-colors.jpg)

Pretty clear. Please, keep the note that we have enclosed the spans inside an `h4` element just to make them a little bit bigger.

### Badges

Quite often, you want to display a small, or larger, badge, like a number inside a circle. For example, indicating the number of unread messages, like this:

![./images/Number Of Unread Messages Indicated With a Badge](./images/number-of-unread-messages.jpg)

These are very easy to build in Twitter Bootstrap. You only have to enclose your content into a span with class `badge`. Let's add the following content at the end of our main content container:

``` html
<div class="page-header">
        <h1>Badges</h1>
</div>

<h4>Messages <span class="badge">4</span></h4>
```

If you save the page content and reload the page on your browser, you will see the expected result:

![./images/Badge With a Number Inside](./images/badges-example.jpg)

Note that Twitter Bootstrap does not support badges with background color. If you want to do that there are some workarounds, lots of them [you can read about here](http://stackoverflow.com/questions/18730116/twitter-bootstrap-3-0-how-do-i-badge-badge-important-now).

### Tabs

Sometimes we want to organize the information on our page using tabs. The tabs are good because they group parts of the information under a title, and they do not display all the information
at the same time. User selects which information group to see/read by clicking on the corresponding tab header. 

For example:

![./images/Example of Information Organized in Tabs](./images/example-of-tabs.jpg)

The information displayed is changed according to the tab header being clicked:

<div id="media-title-video-tabs-information-displayed-based-on-tab-selected.mp4">How Tabs Display Different Information Based on the Tab Selected</div>
<a href="https://player.vimeo.com/video/194259587"></a>

Let's see how we can implement the above tabs example. 

First, you need to understand that are two parts in the HTML implementation of a tabs feature:

1. The tab headers.
2. The different contents with the actual information.

#### The tab headers

The tab headers is an unsorted list `ul` with class `nav nav-tabs`. Each element in the list (`li`) corresponds to a tab header. The content of each `li` is an
anchor with the data attribute `data-toggle` with value `tab`. Also, each anchor has an `href` value pointing to the corresponding information container to be
displayed when the tab anchor belongs to is clicked.

Here is the HTML fragment for tab headers for the example above:

``` html
<ul class="nav nav-tabs">
    <li class="active"><a href="#dashboard" data-toggle="tab">Dashboard</a></li>
    <li><a href="#payments" data-toggle="tab">Payments</a></li>
    <li><a href="#invoices" data-toggle="tab">Invoices</a></li>
    <li><a href="#settings" data-toggle="tab">Settings</a></li>
</ul>
```

As you can see above, we have:

1. An unordered list (`ul`) to list all the tab headers.
2. The `ul` has the classes `nav` and `nav-tabs`.
3. There is one `li` element for each tab header. Note that the first one, has the class `active`. This will make the first tab look as being selected/open.
4. The content of each tab header is enclosed inside an anchor.
5. The anchors have the `data-toggle="tab"` attribute.
6. Each anchor is pointing, via its `href` attribute, to an information container.

Let's add the below HTML fragment before the end of the main content container:

``` html
<div class="page-header">
  <h1>Tabs</h1>
</div>

<ul class="nav nav-tabs">
    <li class="active"><a href="#dashboard" data-toggle="tab">Dashboard</a></li>
    <li><a href="#payments" data-toggle="tab">Payments</a></li>
    <li><a href="#invoices" data-toggle="tab">Invoices</a></li>
    <li><a href="#settings" data-toggle="tab">Settings</a></li>
</ul>
```
Save the content and reload the page on your browser. You should see this:

![./images/Tab Headers Are Displayed Correctly - Information Is Missing](./images/tab-headers-are-ready.jpg)

That's a good step. You can see how the tabs are well put on the page. You can even click on the headers in order to see how the active tab changes according to the tab that you click on.

What is missing now is the information that should be attached at each tab.

#### The tab information

We put the tab information inside a `div` with class `tab-content`. Inside that, we create one `div` per information group/tab header. This `div` needs to have class `tab-pane`. Also, it
needs to have the correct `id`, different for each tab information panel and corresponding to the `href` values of the corresponding tab.

Let's add the following piece of HTML code at the end of the main content container, after the unsorted list that we have created for the tab headers.

``` html
<div class="tab-content">
    <div id="dashboard" class="tab-pane active">
      <p>
        <strong>Dashboard:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
      </p>
    </div>
    
    <div id="payments" class="tab-pane">
      <p>
        <strong>Payments:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
      </p>
    </div>
    
    <div id="invoices" class="tab-pane">
      <p>
        <strong>Invoices:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
      </p>
    </div>
    
    <div id="settings" class="tab-pane">
      <p>
        <strong>Settings:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
      </p>
    </div>
</div>
```
As you can see above:

1. We have a div that contains all the other individual divs. 
2. This parent div has class `tab-content`.
3. Each div has id value equal to the `href` of the corresponding tab header anchor.
4. Each div has the class `tab-pane`.
5. The first div has the class `active` too, because this is the first information box that is displayed for the first tab header, which is also, initially, active.

If you save the above information and reload the page, you will see this:

![./images/Tab Information Is Displayed Below Tab Headers](./images/tabs-with-information-below-headers.jpg)

As you can see, the tab information is clearly displayed below the tab headers. Also, if you try to click on different tab headers, you will see how the information
below changes accordingly.

However, there is one more step to do in order to finish with the tabs. We need to add some attributes that deal with assistive technologies, such as screen readers.

Here is the final content for our tabs:

``` html
<ul class="nav nav-tabs" role="tablist">
  <li class="active" role="presentation"><a href="#dashboard" data-toggle="tab" aria-controls="dashboard" role="tab">Dashboard</a></li>
  <li role="presentation"><a href="#payments" data-toggle="tab" aria-controls="payments" role="tab">Payments</a></li>
  <li role="presentation"><a href="#invoices" data-toggle="tab" aria-controls="invoices" role="tab">Invoices</a></li>
  <li role="presentation"><a href="#settings" data-toggle="tab" aria-controls="settings" role="tab">Settings</a></li>
</ul>
<div class="tab-content">
  <div id="dashboard" class="tab-pane active" role="tabpanel">
    <p>
      <strong>Dashboard:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    </p>
  </div>
  <div id="payments" class="tab-pane" role="tabpanel">
    <p>
      <strong>Payments:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    </p>
  </div>
  <div id="invoices" class="tab-pane" role="tabpanel">
    <p>
      <strong>Invoices:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    </p>
  </div>
  <div id="settings" class="tab-pane" role="tabpanel">
    <p>
      <strong>Settings:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    </p>
  </div>
</div>
```
As you can read, we have added `role` and `aria-*` attributes. If you want to understand what these attributes are, [you can read here](http://stackoverflow.com/questions/10403138/what-is-the-purpose-of-the-role-attribute-in-html).

### Checkpoint

We have done a lot of work on this page. Before we continue, let's make sure that it has the following content:

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Twitter Bootstrap Reference Page</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="stylesheets/main.css" type="text/css">

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

    <!-- Fixed navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <div class="navbar-header">
          <a class="navbar-brand" href="#">Bootstrap Ref. Page</a>
        </div>

        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>

            <!-- Drop down Menu -->
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
            <!-- end of drop down Menu -->

          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <!-- main content container -->
    <div class="container">

      <div class="jumbotron">
        <h1>Jumbotron</h1>
        <p class="lead">
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
          exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
          pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
        </p>
      </div>

      <div class="page-header">
        <h1>Page Header</h1>
      </div>

      <div class="page-header">
        <h1>Buttons</h1>
      </div>

      <h2>Extra Small Sizes</h2>
      <p>
        <button type="button" class="btn btn-xs">btn btn-xs </button>
        <button type="button" class="btn btn-xs btn-default">btn btn-xs btn-default</button>
        <button type="button" class="btn btn-xs btn-primary">btn btn-xs btn-primary</button>
        <button type="button" class="btn btn-xs btn-success">btn btn-xs btn-success</button>
        <button type="button" class="btn btn-xs btn-info">btn btn-xs btn-info</button>
        <button type="button" class="btn btn-xs btn-warning">btn btn-xs btn-warning</button>
        <button type="button" class="btn btn-xs btn-danger">btn btn-xs btn-danger</button>
        <button type="button" class="btn btn-xs btn-link">btn btn-xs btn-link</button>
      </p>

      <h2>Small Sizes</h2>
      <p>
        <button type="button" class="btn btn-sm">btn btn-sm</button>
        <button type="button" class="btn btn-sm btn-default">btn btn-sm btn-default</button>
        <button type="button" class="btn btn-sm btn-primary">btn btn-sm btn-primary</button>
        <button type="button" class="btn btn-sm btn-success">btn btn-sm btn-success</button>
        <button type="button" class="btn btn-sm btn-info">btn btn-sm btn-info</button>
        <button type="button" class="btn btn-sm btn-warning">btn btn-sm btn-warning</button>
        <button type="button" class="btn btn-sm btn-danger">btn btn-sm btn-danger</button>
        <button type="button" class="btn btn-sm btn-link">btn btn-sm btn-link</button>
      </p>
      
      <h2>Normal Sizes</h2>
      <p>
        <button type="button" class="btn">btn</button>
        <button type="button" class="btn btn-default">btn btn-default</button>
        <button type="button" class="btn btn-primary">btn btn-primary</button>
        <button type="button" class="btn btn-success">btn btn-success</button>
        <button type="button" class="btn btn-info">btn btn-info</button>
        <button type="button" class="btn btn-warning">btn btn-warning</button>
        <button type="button" class="btn btn-danger">btn btn-danger</button>
        <button type="button" class="btn btn-link">btn btn-link</button>
      </p>
      
      <h2>Large Sizes</h2>
      <p>
        <button type="button" class="btn btn-lg">btn btn-lg </button>
        <button type="button" class="btn btn-lg btn-default">btn btn-lg btn-default</button>
        <button type="button" class="btn btn-lg btn-primary">btn btn-lg btn-primary</button>
        <button type="button" class="btn btn-lg btn-success">btn btn-lg btn-success</button>
        <button type="button" class="btn btn-lg btn-info">btn btn-lg btn-info</button>
        <button type="button" class="btn btn-lg btn-warning">btn btn-lg btn-warning</button>
        <button type="button" class="btn btn-lg btn-danger">btn btn-lg btn-danger</button>
        <button type="button" class="btn btn-lg btn-link">btn btn-lg btn-link</button>
      </p>

      <div class="page-header">
        <h1>Tables</h1>
      </div>

      <h2>Shopping List</h2>
      <table class="table table-hover">
        <tr><th colspan="2">Shopping List</th></tr>
        <tr><th>Item</th><th>Qt</th></tr>
        <tr><td>Cheese</td><td>1 kgr</td></tr>
        <tr><td>Rice</td><td>1.5 kgr</td></tr>
        <tr><td>Coffee</td><td>0.5 kgr</td></tr>
        <tr><td>Milk</td><td>1 ltr</td></tr>
        <tr><td>Wine</td><td>1 btl</td></tr>
      </table>

      <h2>Travel Plan</h2>
      <table class="table table-striped table-bordered table-condensed">
        <tr><th colspan="2">Travel Plan</th></tr>
        <tr class="active"><th>Action</th><th>Due</th></tr>
        <tr class="success"><td>Book Ticket</td><td>Feb 20th</td></tr>
        <tr class="info"><td>Book Hotel</td><td>March 26th</td></tr>
        <tr class="warning"><td>Buy Suitcase</td><td>April 20th</td></tr>
        <tr class="danger"><td>Get Passport</td><td>April 30th</td></tr>
      </table>


      <div class="page-header">
        <h1>Labels</h1>
      </div>

      <h4>
         <span class="label label-default">€20.00 - Default</span>
         <span class="label label-primary">€20.00 - Primary</span>
         <span class="label label-success">€20.00 - Success</span>
         <span class="label label-info">€20.00 - Info</span>
         <span class="label label-warning">€20.00 - Warning</span>
         <span class="label label-danger">€20.00 - Danger</span>
      </h4>

      <div class="page-header">
        <h1>Badges</h1>
      </div>

      <h4>Messages <span class="badge">4</span></h4>

      <div class="page-header">
        <h1>Tabs</h1>
      </div>

      <ul class="nav nav-tabs" role="tablist">
        <li class="active" role="presentation"><a href="#dashboard" data-toggle="tab" aria-controls="dashboard" role="tab">Dashboard</a></li>
        <li role="presentation"><a href="#payments" data-toggle="tab" aria-controls="payments" role="tab">Payments</a></li>
        <li role="presentation"><a href="#invoices" data-toggle="tab" aria-controls="invoices" role="tab">Invoices</a></li>
        <li role="presentation"><a href="#settings" data-toggle="tab" aria-controls="settings" role="tab">Settings</a></li>
      </ul>

      <div class="tab-content">
        <div id="dashboard" class="tab-pane active" role="tabpanel">
          <p>
            <strong>Dashboard:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
          </p>
        </div>
        <div id="payments" class="tab-pane" role="tabpanel">
          <p>
            <strong>Payments:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
          </p>

        </div>
        <div id="invoices" class="tab-pane" role="tabpanel">
          <p>
            <strong>Invoices:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
          </p>

        </div>
        <div id="settings" class="tab-pane" role="tabpanel">
          <p>
            <strong>Settings:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
          </p>
        </div>
      </div>

    </div>
    <!-- end of main content container -->

  </body>
</html>
```

### Alerts

There are times that you want to display a message that will attract users' attention. These are called alerts. This is an example:

![./images/An Alert Example](./images/an-alert-example.jpg)

These messages are usually displayed at the top of the page, but not necessarily only there.

Twitter Bootstrap gives the class `alert` that should be used on a block element in order to turn it into an alert block.
Alongside that, you also need to specify a class that would colour the alert so that it better conveys the message to the user.
So, for a message that would indicate warning, you could use the `alert-warning` class, alongside the `alert` one.

The colour classes related to alerts are:

1. `alert-success`
2. `alert-info`
3. `alert-warning`
4. `alert-danger`

Let's see these alerts in action. Add the following HTML fragment exactly before the end of the main content container:

``` html
<div class="page-header">
    Alerts
</div>

<div class="alert alert-success" role="alert">
  <strong>SUCCESS: Well done!</strong> You successfully read this important alert message.
</div>

<div class="alert alert-info" role="alert">
  <strong>INFO: Heads up!</strong> This alert needs your attention, but it's not super important.
</div>

<div class="alert alert-warning" role="alert">
  <strong>WARNING: Watch Out!</strong> Best check yo self, you're not looking too good.
</div>

<div class="alert alert-danger" role="alert">
  <strong>DANGER: Error!</strong> Change a few things up and try submitting again.
</div>
```
If you save the content of your page and reload it on your browser, you will see this:

![./images/All Versions of Alerts](./images/alerts-all-versions.jpg)

As you can see from the examples above, you can have any HTML content inside your alert box. For example you can have links to other pages:

``` html
<div class="alert alert-info" role="alert">
   <strong>London</strong> Read more about London from <a href="https://en.wikipedia.org/wiki/London">Wikipedia London Link</a>.
</div>
```      
Add the above at the end of the main content container, save and reload your page. You will see this:

![./images/Alert with a Link Inside](./images/alert-with-link-inside.jpg)

### Progress Bars

The progress bars indicate how much of a given task has been completed and how much remains to be done. For example:

![./images/Example of Progress Bar](./images/example-of-a-progress-bar.jpg)

As you can see above, the progress bar has both a color and a text indication of how much of the process has been completed and how much is left to be done.

Twitter Bootstrap has 2 classes that are related to this tool, the `progress` and the `progress-bar`. Let's see how they should be used by appending the following HTML content to the end
of the main content container.

``` html
<div class="page-header">
    <h1>Progress Bars</h1>
</div>

<div class="progress">
    <div class="progress-bar" style="width: 60%;">60% Complete</div>
</div>
```

As you can see from the fragment above, the progress bars are very easy to build. A `div` has the class `progress` and another `div`, inside the first, has the class `progress-bar`.
The child `div` has the text that is displayed to give a textual info about the current progress. This text is not necessary. It might be empty. The important part here is that you 
correctly set the value for the `width` attribute of the child `div`, so that it is that big to indicate the actual progress. A good approach is to use a percentage here, because, the
percentage will make the child width be a percentage of the width of the parent `div`. The `progress` class on parent `div` makes sure that the parent `div` occupies all the available
width of the page, whereas the `style="width: 60%"` on the child `div` makes sure that the child `div` occupies exactly `60%` of the parent `div`, hence, the group of these two `div`
elements working as one to give the visual effect of the progress bar.

Besides the plain progress bar that you see above, Twitter Bootstrap offers some more classes that work on top of the `progress-bar` class to give a special color to the bar itself. These classes
are:

1. `progress-bar-success`
2. `progress-bar-info`
3. `progress-bar-warning`
4. `progress-bar-danger`
5. `progress-bar-striped`

Let's create an example for each one of them and put them at the end of the main content container.

``` html
<div class="progress">
    <div class="progress-bar progress-bar-success" style="width: 60%;">60% Success</div>
</div>

<div class="progress">
    <div class="progress-bar progress-bar-info" style="width: 60%;">60% Info</div>
</div>

<div class="progress">
    <div class="progress-bar progress-bar-warning" style="width: 60%;">60% Warning</div>
</div>

<div class="progress">
    <div class="progress-bar progress-bar-danger" style="width: 60%;">60% Complete</div>
</div>

<div class="progress">
    <div class="progress-bar progress-bar-striped" style="width: 60%;">60% Complete</div>
</div>

```

If you save your page and reload it on your browser, you will see this:

![./images/Different Colour Progress Bars](./images/progress-bars-of-different-colors.jpg)

Nice progress bars with different colors.

Finally, there is another trick that you can do with progress bars. You can use different colors on the same progress bar. You can create an effect like this:

![./images/Example of Multicoloured Progress Bar](./images/example-of-progress-bar-with-different-colors.jpg)

This is easily achieved by including more than one child `div` with `progress-bar` class. In order to see this in action, append the following HTML fragment at the end of the main content container:

``` html
<div class="progress">
    <div class="progress-bar progress-bar-success" style="width: 35%">35%</div>
    <div class="progress-bar progress-bar-warning" style="width: 20%">20%</div>
    <div class="progress-bar progress-bar-danger" style="width: 10%">10%</div>
</div>
```
As you can see above, all three different color `divs` are inside the parent `div`. Twitter Bootstrap is clever enough to draw each one of them at the correct position, and given the classes for
the color of the progress bars, to draw them with the correct color. 

If you save and load your page again, you will see this:

![./images/All Progress Bar Examples](./images/all-progress-bars-including-multi-coloured-one.jpg)

> *Note:* The above code for progress bars is missing extra attributes to support assistive technologies and make your Web site/application to be accessible by visually impaired people. This is 
a whole other subject. You can read about this in Twitter Bootstrap documentation and on specific sites, like [here](https://www.w3.org/WAI/intro/aria).

### Panels

Panels are a good way to group some piece of information below a header. Like this:

![./images/Example of a Panel](./images/example-of-a-panel.jpg)

The panels have a heading and a body:

![./images/Body and Heading of Panel Highlighted](./images/example-of-a-panel-heading-and-body-highlighted.jpg)

In order to create a panel:

1. You need to create a parent `div` with class `panel` and one of the color classes:
    1. `panel-default`
    2. `panel-primary`
    3. `panel-success`
    4. `panel-info`
    5. `panel-warning`
    6. `panel-danger`
2. The parent `div` should have 2 child `divs`.
    1. First one is for the panel heading and needs to have the class `panel-heading`.
    2. Second one is for the panel body and needs to have the class `panel-body`.
    
Other than that, both heading and body can contain any valid HTML content.
    
Let's append the following HTML fragment at the end of the main content container. It is a fragment that creates two panels in our page. A panel with default color and a panel with
info color:
    
``` html
<div class="page-header">
    <h1>Panels</h1>
</div>

<div class="panel panel-default">
    <div class="panel-heading">
      <h3 class="panel-title">Barcelona</h3>
    </div>
    <div class="panel-body">
      <p>Barcelona (/bɑːrsəˈloʊnə/, Catalan: [bəɾsəˈlonə], Spanish: [barθeˈlona]) is the capital city of the autonomous community of Catalonia in Spain and Spain's second most populated
        city, with a population of 1.6 million[5] within its administrative limits. Its urban area extends beyond the administrative city limits with a population of around 4.7 million people,
        being the seventh-most populous urban area in the European Union after Paris, London, Madrid, the Ruhr area, Berlin and Milan.[3] It is the largest metropolis on the Mediterranean Sea,
        located on the coast between the mouths of the rivers Llobregat and Besòs, and bounded to the west by the Serra de Collserola mountain range, the tallest peak of which is 512 metres
        (1,680 ft) high.</p>
    </div>
</div>

<div class="panel panel-info">
    <div class="panel-heading">
      <h3 class="panel-title">Rome</h3>
    </div>
    <div class="panel-body">
      <p>Rome (/ˈroʊm/ rohm; Italian: Roma [ˈroːma] ( listen), Latin: Rōma) is a city and special comune (named Roma Capitale) in Italy. Rome is the capital of Italy and of
        the Lazio region. With 2.9 million residents in 1,285 km2 (496.1 sq mi), it is also the country's largest and most populated comune and fourth-most populous city in the
        European Union by population within city limits. The Metropolitan City of Rome has a population of 4.3 million residents.[2] The city is located in the central-western
        portion of the Italian Peninsula, within Lazio (Latium), along the shores of Tiber river. The Vatican City is an independent country geographically located within the
        city boundaries of Rome, the only existing example of a country within a city: for this reason Rome has been often defined as capital of two states.</p>
    </div>
</div>
```
If you save the above content and reload the page on your browser you will see this:

![./images/Two Panels, One Default another Info Colour](./images/two-panels-default-and-info.jpg)

### Wells

Wells are a tool to apply an inset effect to an area of text. For example this:

![./images/Well example](./images/wells-example.jpg)

You need to apply the class `well` on a block element in order to implement the above effect. There is also a large and a small version. The large version is realized if applied
the class `well-lg` and the small version if applied the class `well-sm` (both alongside the `well` class). Let's see these classes in action.

Append the following content at the end of the main content container:

``` html
<div class="page-header">
    <h1>Wells</h1>
</div>

<div class="well well-sm">
    <p><em>small well</em></p>
    <strong>Naples:</strong> is the capital of the Italian region Campania and the third-largest municipality in Italy, after Rome and Milan. In 2015, around 975,260 people lived within
    the city's administrative limits. The Metropolitan City of Naples had a population of 3,115,320. Naples is the 9th-most populous urban area in the European Union with a population of
    between 3 million[3] and 3.7 million.[4] About 4 million people live in the Naples metropolitan area, one of the largest metropolises on the Mediterranean Sea.
</div>

<div class="well">
    <p><em>normal well</em></p>
    <strong>Athens:</strong> is the capital and largest city of Greece. Athens dominates the Attica region and is one of the world's oldest cities, with its recorded history spanning
    around 3,400 years, and the earliest human presence started somewhere between the 11th and 7th millennium BC.[3] Classical Athens was a powerful city-state that emerged in
    conjunction with the seagoing development of the port of Piraeus. A centre for the arts, learning and philosophy, home of Plato's Academy and Aristotle's Lyceum,[4][5] it is
    widely referred to as the cradle of Western civilization and the birthplace of democracy,[6][7] largely because of its cultural and political impact on the European continent
    and in particular the Romans.[8] In modern times, Athens is a large cosmopolitan metropolis and central to economic, financial, industrial, maritime, political and cultural life
    in Greece. In 2015, Athens was ranked the world's 29th richest city by purchasing power[9] and the 67th most expensive[10] in a UBS study.
</div>

<div class="well well-lg">
    <p><em>large well</em></p>
    <strong>Paris:</strong> (French: [paʁi] ( listen)) is the capital and most populous city of France. Situated on the Seine River, in the north of the country, it is in the centre of the
    Île-de-France region, also known as the région parisienne, "Paris Region". The City of Paris largely retains its one and a half century old administrative boundaries, with an area of
    105 km² (41 mi²) and as of 2014 a population of 2,241,346.[4][5] Together with its suburbs, the whole agglomeration has a population of 10,550,350 (Jan. 2012 census).[2] Paris'
    metropolitan area spans most of the Paris region and has a population of 12,341,418 (Jan. 2012 census),[3] or one-fifth of the population of France.[6] The administrative region
    covers 12,012 km² (4,638 mi²), with approximately 12 million inhabitants as of 2014, and has its own regional council and president.
</div>
```

As you can read above, we have 3 wells. A small one, realized with the class value `well well-sm`, a normal one, realized with the class value `well`, and a large one
realized with the value `well well-lg`.

If you save the above and reload the page on your browser, you will see this:

![./images/Wells - Small, Normal and Large](./images/wells-small-normal-large.jpg)

### Carousels

We will close this long Twitter Bootstrap reference page with a really cool feature which is called Carousel. Twitter Bootstrap allows you to create image and video carousels.
Carousels are areas of the page that display a series of images (and or videos) one by one. Each image stays visible for a while (about 5 seconds) before being replaced by the next
one.

Like this:

<div id="media-title-video-carousel-demo.mp4">Carousel Example</div>
<a href="https://player.vimeo.com/video/194257115"></a>

A typical carousel is composed of the following:

1. Small indicators usually displayed at the bottom.
![./images/Indicators](./images/carousel-components-indicators.jpg)
The number of indicators is equal to the number of items in the carousel. In our example, we have a carousel with 3 items. Hence, you can see 3 circles. The one that is filled with white color
indicates which item is currently displayed. You can also click on a circle to quickly display the item at the corresponding position.
2. ./images/Next and Previous Controls
![./images/Next and Previous Controls](./images/carousel-components-next-and-previous-controls.jpg)
Next and Previous buttons, like arrows, they allow you to navigate, slide, from item to item, in either direction, left or right.
3. The items
![./images/Items - Item Image & Item Title](./images/carousel-components-items.jpg)
The carousel has a list of items, each one referencing an image and having a title.

Having said the above, it is easy to identify and understand the following HTML fragment, that implements the above carousel. Amend that as the last portion of HTML code at the main
content container.

``` html
<div class="page-header">
    <h1>Carousels</h1>
</div>

<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- ./images/Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
      <li data-target="#carousel-example-generic" data-slide-to="1"></li>
      <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
    
      <div class="item active">
        <img src="images/new-york-landscape.jpg" alt="New York Landscape Image">
        <div class="carousel-caption">
          New York
        </div>
      </div>
    
      <div class="item">
        <img src="images/tokyo-landscape.jpg" alt="Tokyo Landscape Image">
        <div class="carousel-caption">
          Tokyo
        </div>
      </div>
    
      <div class="item">
        <img src="images/athens-landscape.jpg" alt="Athens Landscape Image">
        <div class="carousel-caption">
          Athens
        </div>
      </div>
    
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
```
More explanations are given on this picture below:
![./images/Explanation About the Carousel Parts On HTML Code](./images/carousel-code-explained.jpg)

The following list is a list of items that you, further, need to be aware of when you create a Twitter Bootstrap carousel.

1. The carousel needs to be enclosed inside a `div` block with classes `carousel` and `slide` and `data-ride` value equal to `carousel`.
![./images/Carousel Container - Classes and data-ride Attribute](./images/carousel-container-classes-and-data-ride.jpg)
2. The indicators is an `ol` with class `carousel-indicators`.
![./images/./images/Indicators class](./images/carousel-indicators-class.jpg)
3. You need to have the correct number of indicators. They need to match the number of the items in your carousel. Also, each indicator need to have a different `data-slide-to` attribute value. The first one
has `data-slide-to` value `0`, the second `data-slide-to` equal to `1` and so on. 
![./images/./images/Indicators - data-slide-to Attributes](./images/indicators-data-slide-to.jpg)
4. Also, the indicators need to have a `data-target` attribute with value set to the CSS selector of the Carousel container.
![./images/./images/Indicators - data-target Attributes](./images/indicators-data-target-attribute.jpg)
5. The list of items/slides needs to be wrapped in a `div` with class `carousel-inner`.
![./images/Slides](./images/carousel-slide-wrapper.jpg)
6. Each item/slide is wrapped in its own `div` which should have the class `item`. The first one should be marked also with the class `active`.
![./images/Carousel Items class](./images/carousel-items-class.jpg)
7. The `div` for items can contain any valid HTML, but usually, they contain an image. Also, they can contain a title wrapping `div` with class `carousel-caption`.
![./images/Carousel Item With Image and Title](./images/carousel-item-image-and-title.jpg)
8. If you decide to add left and right navigation controls, they have to be anchors. They have to have the class `carousel-control`. On top of that, the left control needs to have the class `left`
and the right control needs to have the class `right`.
![./images/Left and Right Controls - anchor and classes](./images/carousel-controls-anchor-and-classes-highlighted.jpg)
9. It is very important that the control anchors have the correct `data-slide` attribute. The left control, which takes user to the previous item/slide, needs to have the value `prev`. The right control, needs to have the value `next`.
![./images/Carousel Controls - anchor data-slide Attributes](./images/carousel-controls-anchor-and-data-slide-attribute-highlighted.jpg)
10. Equally important is that the anchors have `href` value that points to the carousel container.
![./images/Carousel Controls href Attributes](./images/carousel-controls-anchor-href-values.jpg)
11. The content of the control anchors can be anything. On above example, we are using the glyphicons, something that will learn about in the next Twitter Bootstrap chapter. 

## Final Checkpoint

For your convenience and double checking with your work, here is the full content of the page that you have created:

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Twitter Bootstrap Reference Page</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="stylesheets/main.css" type="text/css">

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

    <!-- Fixed navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <div class="navbar-header">
          <a class="navbar-brand" href="#">Bootstrap Ref. Page</a>
        </div>

        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>

            <!-- Drop down Menu -->
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
            <!-- end of drop down Menu -->

          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <!-- main content container -->
    <div class="container">

      <div class="jumbotron">
        <h1>Jumbotron</h1>
        <p class="lead">
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
          exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
          pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
        </p>
      </div>

      <div class="page-header">
        <h1>Page Header</h1>
      </div>

      <div class="page-header">
        <h1>Buttons</h1>
      </div>

      <h2>Extra Small Sizes</h2>
      <p>
        <button type="button" class="btn btn-xs">btn btn-xs </button>
        <button type="button" class="btn btn-xs btn-default">btn btn-xs btn-default</button>
        <button type="button" class="btn btn-xs btn-primary">btn btn-xs btn-primary</button>
        <button type="button" class="btn btn-xs btn-success">btn btn-xs btn-success</button>
        <button type="button" class="btn btn-xs btn-info">btn btn-xs btn-info</button>
        <button type="button" class="btn btn-xs btn-warning">btn btn-xs btn-warning</button>
        <button type="button" class="btn btn-xs btn-danger">btn btn-xs btn-danger</button>
        <button type="button" class="btn btn-xs btn-link">btn btn-xs btn-link</button>
      </p>

      <h2>Small Sizes</h2>
      <p>
        <button type="button" class="btn btn-sm">btn btn-sm</button>
        <button type="button" class="btn btn-sm btn-default">btn btn-sm btn-default</button>
        <button type="button" class="btn btn-sm btn-primary">btn btn-sm btn-primary</button>
        <button type="button" class="btn btn-sm btn-success">btn btn-sm btn-success</button>
        <button type="button" class="btn btn-sm btn-info">btn btn-sm btn-info</button>
        <button type="button" class="btn btn-sm btn-warning">btn btn-sm btn-warning</button>
        <button type="button" class="btn btn-sm btn-danger">btn btn-sm btn-danger</button>
        <button type="button" class="btn btn-sm btn-link">btn btn-sm btn-link</button>
      </p>
      
      <h2>Normal Sizes</h2>
      <p>
        <button type="button" class="btn">btn</button>
        <button type="button" class="btn btn-default">btn btn-default</button>
        <button type="button" class="btn btn-primary">btn btn-primary</button>
        <button type="button" class="btn btn-success">btn btn-success</button>
        <button type="button" class="btn btn-info">btn btn-info</button>
        <button type="button" class="btn btn-warning">btn btn-warning</button>
        <button type="button" class="btn btn-danger">btn btn-danger</button>
        <button type="button" class="btn btn-link">btn btn-link</button>
      </p>
      
      <h2>Large Sizes</h2>
      <p>
        <button type="button" class="btn btn-lg">btn btn-lg </button>
        <button type="button" class="btn btn-lg btn-default">btn btn-lg btn-default</button>
        <button type="button" class="btn btn-lg btn-primary">btn btn-lg btn-primary</button>
        <button type="button" class="btn btn-lg btn-success">btn btn-lg btn-success</button>
        <button type="button" class="btn btn-lg btn-info">btn btn-lg btn-info</button>
        <button type="button" class="btn btn-lg btn-warning">btn btn-lg btn-warning</button>
        <button type="button" class="btn btn-lg btn-danger">btn btn-lg btn-danger</button>
        <button type="button" class="btn btn-lg btn-link">btn btn-lg btn-link</button>
      </p>

      <div class="page-header">
        <h1>Tables</h1>
      </div>

      <h2>Shopping List</h2>
      <table class="table table-hover">
        <tr><th colspan="2">Shopping List</th></tr>
        <tr><th>Item</th><th>Qt</th></tr>
        <tr><td>Cheese</td><td>1 kgr</td></tr>
        <tr><td>Rice</td><td>1.5 kgr</td></tr>
        <tr><td>Coffee</td><td>0.5 kgr</td></tr>
        <tr><td>Milk</td><td>1 ltr</td></tr>
        <tr><td>Wine</td><td>1 btl</td></tr>
      </table>

      <h2>Travel Plan</h2>
      <table class="table table-striped table-bordered table-condensed">
        <tr><th colspan="2">Travel Plan</th></tr>
        <tr class="active"><th>Action</th><th>Due</th></tr>
        <tr class="success"><td>Book Ticket</td><td>Feb 20th</td></tr>
        <tr class="info"><td>Book Hotel</td><td>March 26th</td></tr>
        <tr class="warning"><td>Buy Suitcase</td><td>April 20th</td></tr>
        <tr class="danger"><td>Get Passport</td><td>April 30th</td></tr>
      </table>


      <div class="page-header">
        <h1>Labels</h1>
      </div>

      <h4>
         <span class="label label-default">€20.00 - Default</span>
         <span class="label label-primary">€20.00 - Primary</span>
         <span class="label label-success">€20.00 - Success</span>
         <span class="label label-info">€20.00 - Info</span>
         <span class="label label-warning">€20.00 - Warning</span>
         <span class="label label-danger">€20.00 - Danger</span>
      </h4>

      <div class="page-header">
        <h1>Badges</h1>
      </div>

      <h4>Messages <span class="badge">4</span></h4>

      <div class="page-header">
        <h1>Tabs</h1>
      </div>

      <ul class="nav nav-tabs" role="tablist">
        <li class="active" role="presentation"><a href="#dashboard" data-toggle="tab" aria-controls="dashboard" role="tab">Dashboard</a></li>
        <li role="presentation"><a href="#payments" data-toggle="tab" aria-controls="payments" role="tab">Payments</a></li>
        <li role="presentation"><a href="#invoices" data-toggle="tab" aria-controls="invoices" role="tab">Invoices</a></li>
        <li role="presentation"><a href="#settings" data-toggle="tab" aria-controls="settings" role="tab">Settings</a></li>
      </ul>

      <div class="tab-content">
        <div id="dashboard" class="tab-pane active" role="tabpanel">
          <p>
            <strong>Dashboard:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
          </p>
        </div>
        <div id="payments" class="tab-pane" role="tabpanel">
          <p>
            <strong>Payments:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
          </p>

        </div>
        <div id="invoices" class="tab-pane" role="tabpanel">
          <p>
            <strong>Invoices:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
          </p>

        </div>
        <div id="settings" class="tab-pane" role="tabpanel">
          <p>
            <strong>Settings:</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
          </p>
        </div>
      </div>

      <div class="page-header">
        <h1>Alerts</h1>
      </div>

      <div class="alert alert-success" role="alert">
        <strong>SUCCESS: Well done!</strong> You successfully read this important alert message.
      </div>

      <div class="alert alert-info" role="alert">
        <strong>INFO: Heads up!</strong> This alert needs your attention, but it's not super important.
      </div>

      <div class="alert alert-warning" role="alert">
        <strong>WARNING: Watch Out!</strong> Best check yo self, you're not looking too good.
      </div>

      <div class="alert alert-danger" role="alert">
        <strong>DANGER: Error!</strong> Change a few things up and try submitting again.
      </div>

      <div class="alert alert-info" role="alert">
        <strong>London</strong> Read more about London from <a href="https://en.wikipedia.org/wiki/London">Wikipedia London Link</a>.
      </div>


      <div class="page-header">
        <h1>Progress Bars</h1>
      </div>

      <!--<div class="progress">-->
        <!--<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">60% Complete<span class="sr-only">60% Complete</span></div>-->
      <!--</div>-->

      <div class="progress">
        <div class="progress-bar" style="width: 60%;">60% Complete</div>
      </div>

      <div class="progress">
        <div class="progress-bar progress-bar-success" style="width: 60%;">60% Success</div>
      </div>

      <div class="progress">
        <div class="progress-bar progress-bar-info" style="width: 60%;">60% Info</div>
      </div>

      <div class="progress">
        <div class="progress-bar progress-bar-warning" style="width: 60%;">60% Warning</div>
      </div>

      <div class="progress">
        <div class="progress-bar progress-bar-danger" style="width: 60%;">60% Complete</div>
      </div>

      <div class="progress">
        <div class="progress-bar progress-bar-striped" style="width: 60%;">60% Complete</div>
      </div>

      <div class="progress">
        <div class="progress-bar progress-bar-success" style="width: 35%">35%</div>
        <div class="progress-bar progress-bar-warning" style="width: 20%">20%</div>
        <div class="progress-bar progress-bar-danger" style="width: 10%">10%</div>
      </div>

      <div class="page-header">
        <h1>Panels</h1>
      </div>

      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">Barcelona</h3>
        </div>
        <div class="panel-body">
          <p>Barcelona (/bɑːrsəˈloʊnə/, Catalan: [bəɾsəˈlonə], Spanish: [barθeˈlona]) is the capital city of the autonomous community of Catalonia in Spain and Spain's second most populated
            city, with a population of 1.6 million[5] within its administrative limits. Its urban area extends beyond the administrative city limits with a population of around 4.7 million people,
            being the seventh-most populous urban area in the European Union after Paris, London, Madrid, the Ruhr area, Berlin and Milan.[3] It is the largest metropolis on the Mediterranean Sea,
            located on the coast between the mouths of the rivers Llobregat and Besòs, and bounded to the west by the Serra de Collserola mountain range, the tallest peak of which is 512 metres
            (1,680 ft) high.</p>
        </div>
      </div>

      <div class="panel panel-info">
        <div class="panel-heading">
          <h3 class="panel-title">Rome</h3>
        </div>
        <div class="panel-body">
          <p>Rome (/ˈroʊm/ rohm; Italian: Roma [ˈroːma] ( listen), Latin: Rōma) is a city and special comune (named Roma Capitale) in Italy. Rome is the capital of Italy and of
            the Lazio region. With 2.9 million residents in 1,285 km2 (496.1 sq mi), it is also the country's largest and most populated comune and fourth-most populous city in the
            European Union by population within city limits. The Metropolitan City of Rome has a population of 4.3 million residents.[2] The city is located in the central-western
            portion of the Italian Peninsula, within Lazio (Latium), along the shores of Tiber river. The Vatican City is an independent country geographically located within the
            city boundaries of Rome, the only existing example of a country within a city: for this reason Rome has been often defined as capital of two states.</p>
        </div>
      </div>

      <div class="page-header">
        <h1>Wells</h1>
      </div>

      <div class="well well-sm">
        <p><em>small well</em></p>
        <strong>Naples:</strong> is the capital of the Italian region Campania and the third-largest municipality in Italy, after Rome and Milan. In 2015, around 975,260 people lived within
        the city's administrative limits. The Metropolitan City of Naples had a population of 3,115,320. Naples is the 9th-most populous urban area in the European Union with a population of
        between 3 million[3] and 3.7 million.[4] About 4 million people live in the Naples metropolitan area, one of the largest metropolises on the Mediterranean Sea.
      </div>

      <div class="well">
        <p><em>normal well</em></p>
        <strong>Athens:</strong> is the capital and largest city of Greece. Athens dominates the Attica region and is one of the world's oldest cities, with its recorded history spanning
        around 3,400 years, and the earliest human presence started somewhere between the 11th and 7th millennium BC.[3] Classical Athens was a powerful city-state that emerged in
        conjunction with the seagoing development of the port of Piraeus. A centre for the arts, learning and philosophy, home of Plato's Academy and Aristotle's Lyceum,[4][5] it is
        widely referred to as the cradle of Western civilization and the birthplace of democracy,[6][7] largely because of its cultural and political impact on the European continent
        and in particular the Romans.[8] In modern times, Athens is a large cosmopolitan metropolis and central to economic, financial, industrial, maritime, political and cultural life
        in Greece. In 2015, Athens was ranked the world's 29th richest city by purchasing power[9] and the 67th most expensive[10] in a UBS study.
      </div>

      <div class="well well-lg">
        <p><em>large well</em></p>
        <strong>Paris:</strong> (French: [paʁi] ( listen)) is the capital and most populous city of France. Situated on the Seine River, in the north of the country, it is in the centre of the
        Île-de-France region, also known as the région parisienne, "Paris Region". The City of Paris largely retains its one and a half century old administrative boundaries, with an area of
        105 km² (41 mi²) and as of 2014 a population of 2,241,346.[4][5] Together with its suburbs, the whole agglomeration has a population of 10,550,350 (Jan. 2012 census).[2] Paris'
        metropolitan area spans most of the Paris region and has a population of 12,341,418 (Jan. 2012 census),[3] or one-fifth of the population of France.[6] The administrative region
        covers 12,012 km² (4,638 mi²), with approximately 12 million inhabitants as of 2014, and has its own regional council and president.
      </div>

      <div class="page-header">
        <h1>Carousels</h1>
      </div>

      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- ./images/Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">

          <div class="item active">
            <img src="images/new-york-landscape.jpg" alt="New York Landscape Image">
            <div class="carousel-caption">
              New York
            </div>
          </div>

          <div class="item">
            <img src="images/tokyo-landscape.jpg" alt="Tokyo Landscape Image">
            <div class="carousel-caption">
              Tokyo
            </div>
          </div>

          <div class="item">
            <img src="images/athens-landscape.jpg" alt="Athens Landscape Image">
            <div class="carousel-caption">
              Athens
            </div>
          </div>

        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>

    </div>
    <!-- end of main content container -->

  </body>
</html>
```
and the CSS:

``` css
body {
    padding-top: 70px;
    padding-bottom: 70px;
}

.tab-content p {
    margin: 20px 10px;
}
```

## Closing Note

This closes a long encounter with Twitter Bootstrap. We have created a long page with a big list of Twitter Bootstrap features that can be used as a reference of the 
most commonly used features. 

However, there is a lot more to cover on Twitter Bootstrap. This will be done in the next chapters of this section.






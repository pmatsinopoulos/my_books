In this chapter we will create a basic admin dashboard page, using Twitter Bootstrap facilities of course.
You can see this page here:

![./images/Basic Admin Dashboard](./images/basic-admin-dashboard.jpg)

The characteristics of this page are:

1. It has a navigation bar, the content of which extends the whole page width.
2. The navigation bar non-brand options are aligned to the right.
3. The navigation bar has a search form inside.
4. There is a left side bar with navigation options. Let's call it left-side navigation bar.
5. The left side navigation bar is not displayed on extra small devices:
![./images/Admin Dashboard On Extra Small Device](./images/admin-dashboard-page-does-not-display-the-left-side-navigation-bar-on-extra-small-devices.jpg)

### Empty Twitter Bootstrap Page

Let's start with the empty twitter bootstrap page:

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

  </body>
</html>
```

### Navigation Bar

#### Standard Navigation Bar Content

Let's add the standard navigation bar:

``` html
<nav class="navbar navbar-inverse navbar-fixed-top">

    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>

    <div class="navbar-header">
      <a class="navbar-brand" href="#">Project name</a>
    </div>

    <div id="navbar" class="navbar-collapse collapse">

      <ul class="nav navbar-nav">
        <li><a href="#">Dashboard</a></li>
        <li><a href="#">Settings</a></li>
        <li><a href="#">Profile</a></li>
        <li><a href="#">Help</a></li>
      </ul>

    </div>

</nav>
```
Add the above as the first child element in the `body` element. If you save that and reload your page you will see this:

![./images/Adding the Navigation Bar](./images/adding-the-first-version-of-the-navigation-bar.jpg)

#### Aligning to the Right

The navigation bar has its options aligned to the left. We need to bring them to the right. We have already learned how to do that, with the use of the `nav-right` class.
Let's add the `nav-right` class to the `ul` holding the main navigation options:

``` html
<ul class="nav navbar-nav navbar-right">
    <li><a href="#">Dashboard</a></li>
    <li><a href="#">Settings</a></li>
    <li><a href="#">Profile</a></li>
    <li><a href="#">Help</a></li>
</ul>
```
![./images/Navigation Options Pulled Right - Problem on the Right Edge](./images/navbar-options-pulled-right-but-snapped-on-right-edge.jpg)

Although we have pulled the navigation options to the right, there is a small problem that they are exactly at the right edge. We have fixed this problem in the previous chapter too.
We've set the right margin for the `navbar-right` class to be 0. Another technique that you can use, is that you can wrap the whole content of the `nav` element inside a `container`
div, or inside a `container-fluid` div. This time, we will do the latter. We will wrap the `nav` element content inside a `div` with class `container-fluid`. We picked up the
`container-fluid` vs the `container` because we want the content of the navigation bar to extend to the whole width of the page.

Make sure that the `nav` bar has the following content:

``` html
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">

    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>

    <div class="navbar-header">
      <a class="navbar-brand" href="#">Project name</a>
    </div>

    <div id="navbar" class="navbar-collapse collapse">

      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Dashboard</a></li>
        <li><a href="#">Settings</a></li>
        <li><a href="#">Profile</a></li>
        <li><a href="#">Help</a></li>
      </ul>

    </div>

  </div>

</nav>
```
If you save this and reload the page on your browser, you will see this:

![./images/Navigation Options Pull Right - Problem Fixed](./images/navbar-options-pulled-to-right-problem-fixed.jpg)

As you can see, the problem has been fixed.

#### Adding the Search Form

We are required to add a search form inside the top navigation bar. This will not be part of the list of options, but it needs to be part of the div that collapses when we 
switch to extra small devices, i.e. part of `#navbar` div.

Let's put the following code inside the `#navbar` div, but after the `ul` with the nav options.

``` html
<form>
    <input type="text" placeholder="Search...">
</form>
```
Hence, the `nav` element needs to be like this:

``` html
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">

    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>

    <div class="navbar-header">
      <a class="navbar-brand" href="#">Project name</a>
    </div>

    <div id="navbar" class="navbar-collapse collapse">

      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Dashboard</a></li>
        <li><a href="#">Settings</a></li>
        <li><a href="#">Profile</a></li>
        <li><a href="#">Help</a></li>
      </ul>

      <form>
        <input type="text" placeholder="Search...">
      </form>

    </div>

  </div>

</nav>
```
If you save the above code and reload the page, you will see this:

![./images/Search Form Inside the Top Navigation Bar - Not Styled](./images/search-form-inside-the-top-navigation-bar-not-styled.jpg)

Although the form has been put inside the navigation bar area, and if you shrink your browser window, collapses alongside the other options, it's badly positioned on the left.
Let's try to move that on the right, by using the same class `navbar-right`.

``` html
<form class="navbar-right">
    <input type="text" placeholder="Search...">
</form>      
```
If you save the above and reload the page on your browser, you will see this:

![./images/Search Form Positioned On The Right](./images/search-form-positioned-on-the-right.jpg)

The form is now positioned on the right. However, it seems that it is on a top, rather than middle, vertical position. In order to fix that, there is the class `navbar-form` that can
be applied to the `form` element. Let's try to do that:

``` html
<form class="navbar-form navbar-right">
    <input type="text" placeholder="Search...">
</form>      
```
If you save and reload the page, you will see this:
![./images/Search Form on Navigation Bar - Class navbar-form Applied](./images/search-form-with-class-navbar-form-applied.jpg)
The `navbar-form` class fixes, even more, the position of the search form inside the navigation bar. It applies some padding and margins.

There is one more class that you can apply to the `input` control itself. It is not related to navigation bars. It is a class that styles input controls in general. It's the class
`form-control`. Let's assign that:

``` html
<form class="navbar-form navbar-right">
    <input type="text" class="form-control" placeholder="Search...">
</form>      
```
If you save the above and reload the page on your browser, you will see this:

![./images/Search Form - Input Control Styled with Class form-control](./images/search-form-input-control-styled-with-class-form-control.jpg)

The input control has now been styled with class `form-control` and the whole form looks nice on the navigation bar. There are other classes, provided by Twitter Bootstrap,
that are specially used to style forms. We will learn about them in later chapters.

We have finished with the top navigation bar. Now that you have introduced the search form inside it, it might be a good idea to check how this search form appears when the
page is displayed on extra small devices:

![./images/Search Form As Displayed On Extra Small Devices](./images/how-search-form-is-displayed-on-extra-small-devices.jpg)

### Left Side Navigation Bar

We proceed now to build the left side navigation bar.

![./images/Left Side Navigation Bar Properties](./images/left-side-navigation-bar-noteable-things.jpg)

As you can see above, the left side navigation bar should have some properties:

1. Its background color is not white, it is more like a gray.
2. The active menu item has white color and blue background color.
3. There are 3 groups of menu items, a.k.a. 3 different lists.
4. It occupies specific width of the page. Let's assume 1/6th of the width for medium and large devices (a.k.a. 2 columns out of 12),
and 1/4th of the width for small devices (a.k.a. 3 columns out of 12). On extra small devices the sidebar will not be visible.
 
#### Layout
 
Ok. Let's start with the 4th property. Since we want the side bar to occupy part of the width of the page, we will use the correct grid classes. Add the following content below the
`nav` element:

``` html
<div id="main-container" class="container-fluid">
  <div class="row">
    <div class="col-sm-3 col-md-2">
      <!-- Left Side Bar Content will go here -->
      
    </div>
    
    <div id="main-content-container" class="col-sm-9 col-md-10">
      <!-- Main Content will go here -->
      
    </div>
  </div>
</div>
```

As you can see above, we have a div for the sidebar that uses the grid class `col-sm-3` for small devices, hence occupying 3 columns out of 12,
and the class `col-md-2` for medium and large devices, hence occupying 2 columns out of 12.

The main content, will go inside the 2nd div, which also uses grid classes, `col-sm-9` and `col-md-10` so that it occupies the rest of the available width. For small devices, it 
will occupy 9 out of 12 columns and for medium and large devices it will occupy 10 out of 12 columns.
 
Save the above content. If you load the page again, on your browser, you will not see any difference, because sidebar and main content do not have any actual content inside. 

#### Lists Inside Sidebar

We have identified 3 lists inside the left side navigation bar. Let's create them, like we usually do, with `ul` elements.

``` html
<div id="main-container" class="container-fluid">
  <div class="row">
    <div class="col-sm-3 col-md-2">
      <!-- Left Side Bar Content will go here -->
      <ul>
        <li class="active"><a href="#">Overview</a></li>
        <li><a href="#">Reports</a></li>
        <li><a href="#">Analytics</a></li>
        <li><a href="#">Export</a></li>
      </ul>

      <ul>
        <li><a href="#">Nav item</a></li>
        <li><a href="#">Nav item again</a></li>
        <li><a href="#">One more nav</a></li>
        <li><a href="#">Another nav item</a></li>
        <li><a href="#">More navigation</a></li>
      </ul>

      <ul>
        <li><a href="#">Nav item again</a></li>
        <li><a href="#">One more nav</a></li>
        <li><a href="#">Another nav item</a></li>
      </ul>
    </div>

    <div id="main-content-container" class="col-sm-9 col-md-10">
      <!-- Main Content will go here -->

    </div>
  </div>
</div>
```
If you save the above and reload the page on your browser, you will see this:

![./images/Left Sidebar - Lists Added](./images/left-side-navigation-bar-3-lists-added.jpg)

One problem that we see now, is that the top list is hidden by the navigation bar. This is a problem that we have faced in the past. We need to give some top padding to the body content.
At least equal to the height of the navigation bar. We will give `50px`. 

Inside the `stylesheets/main.css` file add the following rule:

``` css
body {
    padding-top: 50px;
}
```

Save and reload the page on your browser. You will see this:

![./images/Lists Are Now Not Hidden By Navigation Bar](./images/lists-are-not-hidden-by-top-navigation-bar.jpg)

That's an improvement. Now, we will apply the class `nav` on the lists. As you remember from previous chapters, the `nav` class on `ul` elements removes the default bullets displayed
on the list items.

``` html
<div id="main-container" class="container-fluid">
  <div class="row">
    <div class="col-sm-3 col-md-2">
      <!-- Left Side Bar Content will go here -->
      <ul class="nav">
        <li class="active"><a href="#">Overview</a></li>
        <li><a href="#">Reports</a></li>
        <li><a href="#">Analytics</a></li>
        <li><a href="#">Export</a></li>
      </ul>

      <ul class="nav">
        <li><a href="#">Nav item</a></li>
        <li><a href="#">Nav item again</a></li>
        <li><a href="#">One more nav</a></li>
        <li><a href="#">Another nav item</a></li>
        <li><a href="#">More navigation</a></li>
      </ul>

      <ul class="nav">
        <li><a href="#">Nav item again</a></li>
        <li><a href="#">One more nav</a></li>
        <li><a href="#">Another nav item</a></li>
      </ul>
    </div>

    <div id="main-content-container" class="col-sm-9 col-md-10">
      <!-- Main Content will go here -->

    </div>
  </div>
</div>
```
Save the above content and reload the page on your browser. You will see this:

![./images/Class nav applied to ul elements](./images/lists-without-bullets-class-nav-applied.jpg)

The left sidebar starts to look much better. Yet, it is not finished.

### Hide the Sidebar on Extra Small Devices

We want to hide the sidebar on extra small devices. This can be achieved with the class `hidden-xs`. This class instructs browser to hide element on extra small devices. Let's add 
that on the div that holds the side bar content.

The `hidden-xs` class is part of the list of classes that are used to hide or show an element based on the responsive breakpoints. The other classes that deal with visibility of 
elements are:

<table style="white-space: nowrap;">
    <thead>
        <tr>
            <th></th>
            <th> Extra small devices <small>Phones (&lt;768px)</small> </th>
            <th> Small devices <small>Tablets (≥768px)</small> </th>
            <th> Medium devices <small>Desktops (≥992px)</small> </th>
            <th> Large devices <small>Desktops (≥1200px)</small> </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th><code>.visible-xs-block</code><br/><code>.visible-xs-inline</code><br/><code>.visible-xs-inline-block</code></th>
            <td>Visible</td>
            <td>Hidden</td> 
            <td>Hidden</td>
            <td>Hidden</td>
        </tr>
        <tr>
            <th><code>.visible-sm-block</code><br/><code>.visible-sm-inline</code><br/><code>.visible-sm-inline-block</code></th>
            <td>Hidden</td>
            <td>Visible</td>
            <td>Hidden</td>
            <td>Hidden</td>
        </tr>
        <tr>
            <th><code>.visible-md-block</code><br/><code>.visible-md-inline</code><br/><code>.visible-md-inline-block</code></th>
            <td>Hidden</td>
            <td>Hidden</td>
            <td>Visible</td>
            <td>Hidden</td> </tr>
        <tr>
            <th><code>.visible-lg-block</code><br/><code>.visible-lg-inline</code><br/><code>.visible-lg-inline-block</code></th>
            <td>Hidden</td>
            <td>Hidden</td>
            <td>Hidden</td>
            <td>Visible</td>
        </tr>
    </tbody>
    <tbody>
        <tr>
            <th><code>.hidden-xs</code></th>
            <td>Hidden</td>
            <td>Visible</td>
            <td>Visible</td>
            <td>Visible</td>
        </tr>
        <tr>
            <th><code>.hidden-sm</code></th>
            <td>Visible</td>
            <td>Hidden</td>
            <td>Visible</td>
            <td>Visible</td>
        </tr>
        <tr>
            <th><code>.hidden-md</code></th>
            <td>Visible</td>
            <td>Visible</td>
            <td>Hidden</td>
            <td>Visible</td>
        </tr>
        <tr> 
            <th><code>.hidden-lg</code></th>
            <td>Visible</td>
            <td>Visible</td>
            <td>Visible</td>
            <td>Hidden</td>
        </tr>
    </tbody>
</table>

Note that the `visible-*-*` need to be very specific with regards to how they would apply the visibility. As you can see, there are 3 versions and according to the
class they apply `display: block;` or `display: inline;` or `display: inline-block;`.

Back to our case, apply the class `hidden-xs` on the div that holds the content of the sidebar. This will make the div hidden on extra small devices, but visible on
others:


``` html
<div id="main-container" class="container-fluid">
  <div class="row">
    <div class="col-sm-3 col-md-2 hidden-xs">
      <!-- Left Side Bar Content will go here -->
      <ul class="nav">
        <li class="active"><a href="#">Overview</a></li>
        <li><a href="#">Reports</a></li>
        <li><a href="#">Analytics</a></li>
        <li><a href="#">Export</a></li>
      </ul>

      <ul class="nav">
        <li><a href="#">Nav item</a></li>
        <li><a href="#">Nav item again</a></li>
        <li><a href="#">One more nav</a></li>
        <li><a href="#">Another nav item</a></li>
        <li><a href="#">More navigation</a></li>
      </ul>

      <ul class="nav">
        <li><a href="#">Nav item again</a></li>
        <li><a href="#">One more nav</a></li>
        <li><a href="#">Another nav item</a></li>
      </ul>
    </div>

    <div id="main-content-container" class="col-sm-9 col-md-10">
      <!-- Main Content will go here -->

    </div>
  </div>
</div>
```

Save the above and reload the page on your browser. You will not see any difference if your browser window width is greater than 768px. But, if you shrink
the browser window to less than 768px, you will see that the side bar is not visible anymore.

### Further Styling of Sidebar

We will proceed now to further style the sidebar. In order to do that we will apply the class `sidebar` on the `div` container that holds the 3 lists and then,
we will write some CSS rules for this particular class. These are the rules:

``` css
.sidebar {
    padding-top: 10px;
    padding-bottom: 10px;
    background-color: #f5f5f5;
    border-right: 1px solid #eee;
}
```
Add the above to your CSS file, save and reload the page on your browser. You will see this:

![./images/Some Styling on Sidebar](./images/background-color-on-left-side-bar.jpg)

The above set the background color and border on the right side of the sidebar. Also, some padding on top and bottom.

We now want to make sure that the sidebar height occupies the whole available height. In order to do that, we need to specify `height: 100%` both on `sidebar` div and on all of its
ancestor elements. 

Make sure that the CSS has the following content:

``` css
html {
    height: 100%;
}

body {
    padding-top: 50px;
    height: 100%;
}

#main-container,
#main-container .row,
#main-container .row .sidebar{
    height: 100%;
}

.sidebar {
    padding-top: 10px;
    padding-bottom: 10px;
    background-color: #f5f5f5;
    border-right: 1px solid #eee;
}
```

Note that with `#main-container` we are referring to the id of the container that holds the main content of the page, exactly after the `nav` element.

``` html
<div id="main-container" class="container-fluid">
  <div class="row">
    <div class="col-sm-3 col-md-2 hidden-xs sidebar">
      <!-- Left Side Bar Content will go here -->
      <ul class="nav">
        <li class="active"><a href="#">Overview</a></li>
        <li><a href="#">Reports</a></li>
        <li><a href="#">Analytics</a></li>
        <li><a href="#">Export</a></li>
      </ul>

      <ul class="nav">
        <li><a href="#">Nav item</a></li>
        <li><a href="#">Nav item again</a></li>
        <li><a href="#">One more nav</a></li>
        <li><a href="#">Another nav item</a></li>
        <li><a href="#">More navigation</a></li>
      </ul>

      <ul class="nav">
        <li><a href="#">Nav item again</a></li>
        <li><a href="#">One more nav</a></li>
        <li><a href="#">Another nav item</a></li>
      </ul>
    </div>

    <div id="main-content-container" class="col-sm-9 col-md-10">
      <!-- Main Content will go here -->

    </div>
  </div>
</div>
```

If you save the above and reload the page on your browser, you will see this:

![./images/Sidebar Occupies The Full Height](./images/left-sidebar-now-occupies-the-whole-height.jpg)

We continue with the styling of the sidebar:

1. We will make sure that the user can tell one group of options from the next. We will apply a bottom margin on the `ul` elements of the sidebar
2. We want the lists to occupy all the available width. So that when one moves the mouse pointer over any of the elements, the highlight goes from left to right. In order
to achieve that, we will remove the left and right padding from the sidebar container.

Hence, our CSS file is as follows:

``` CSS
html {
    height: 100%;
}

body {
    padding-top: 50px;
    height: 100%;
}

#main-container,
#main-container .row,
#main-container .row .sidebar{
    height: 100%;
}

.sidebar {
    padding: 10px 0;
    background-color: #f5f5f5;
    border-right: 1px solid #eee;
}

.sidebar ul {
    margin-bottom: 20px;
}
```

If you save this and reload the page on your browser, you will see this:

![./images/Left Sidebar Lists Occupy All Of The Available Width](./images/left-sidebar-lists-occupy-the-whole-width.jpg)

We proceed with applying some background and foreground color on options of the sidebar menu. Here is the extra CSS rules that you need to apply:

``` CSS
.sidebar ul li a:hover {
    color: #000096;
}

.sidebar ul li.active,
.sidebar ul li.active a:hover {
    background-color: #428BCA;
    color: White;
}

.sidebar ul li.active a {
    color: White;
}
```

If you save and load the page on your browser, you will see the following:
![./images/Active Menu Option Color Properties](./images/left-sidebar-color-of-active-option.jpg)

As you can see above, with the CSS rules introduced, we set the color of the `li` that has the `active` class applied. Also, we set the color of other `li` elements, not the active
ones. See how the color of the text changes when we hover the mouse over one of the non-active options:

![./images/Non Active Options - Mouse Over Text Color](./images/non-active-options-mouse-hover-text-color.jpg)

### Main Content Area

We stop styling the sidebar and we proceed in constructing the main content area. We will start with the dashboard top area, in which we are supposed to be presenting a series
of graphs. 

![./images/Dashboard - Top Area With Graphs](./images/dashboard-graphs.jpg)

Note the following about the objective:

1. There is a `Dashboard` header with horizontal line at the bottom. We can create this effect with the class `page-header` that we have seen in previous chapters.
2. We have 4 information containers (graph image + text).
3. On large displays the information containers displayed on one row are 4. Same goes for medium and small devices. On extra small devices, we display 2 information
containers per row:
![./images/On Extra Small Devices - 2 Information Containers Per Row](./images/dashboard-has-two-information-containers-per-row-on-extra-small-devices.jpg)
4. We are using some placeholder images for the graph images.

Let's start:

#### Dashboard Header

First add the `Dashboard` header:

``` html
<div class="page-header">
    <h1>Dashboard</h1>
</div>
```

Add the above as the first child of the `#main-content-container`. Save and reload the page on your browser. You will see this:

![./images/Dashboard Page Header Added](./images/dashboard-page-header-added.jpg)

That was pretty easy, and we have done that in the past. You can now see the `Dashboard` styled as a page header with the help of the class `page-header`.

#### Information Containers

The information containers are blocks of HTML code that contain:

1. an image, `img` element.
2. a small label, inside an `h4` element.
3. a span with some text displayed below the label.

``` html
<img src="images/placeholder-200x200.png" width="200" height="200"
   alt="Generic placeholder thumbnail">
<h4>Label</h4>
<span>Something else</span>
```

Each one of the above - we have 4 of those - we need to enclose inside a `div` with the correct Twitter Bootstrap grid classes.

``` html
<div class="col-xs-6 col-sm-3">
    <img src="images/placeholder-200x200.png" width="200" height="200"
       alt="Generic placeholder thumbnail">
    <h4>Label</h4>
    <span>Something else</span>
</div>
```
The `div` has grid classes `col-xs-6` and `col-sm-3`. On extra small devices, each information container block, will occupy half of the available
width (6 out of 12 columns). On larger devices, it will occupy a quarter of the available width (3 out of 12 columns).

We need to repeat the above, 3 more times, and enclose the whole set of `div` columns to a `div` with class `row`.

``` html
<div class="row">
  <div class="col-xs-6 col-sm-3">
      <img src="images/placeholder-200x200.png" width="200" height="200"
         alt="Generic placeholder thumbnail">
      <h4>Label</h4>
      <span>Something else</span>
  </div>

  <div class="col-xs-6 col-sm-3">
      <img src="images/placeholder-200x200.png" width="200" height="200"
         alt="Generic placeholder thumbnail">
      <h4>Label</h4>
      <span>Something else</span>
  </div>

  <div class="col-xs-6 col-sm-3">
      <img src="images/placeholder-200x200.png" width="200" height="200"
         alt="Generic placeholder thumbnail">
      <h4>Label</h4>
      <span>Something else</span>
  </div>

  <div class="col-xs-6 col-sm-3">
      <img src="images/placeholder-200x200.png" width="200" height="200"
         alt="Generic placeholder thumbnail">
      <h4>Label</h4>
      <span>Something else</span>
  </div>
</div>  
```
Place the above, exactly below the `Dashboard` `div` container. Save the file and reload the page on your browser. You will see this:

![./images/Dashboard - Information Containers Put On Page](./images/dashboard-information-containers.jpg)

Now, information containers have successfully been put on the page, below the page header. But, we need to do some style tuning in order to achieve the desired result.

Let's first make sure that the images are displayed with a circle shape. This is very easy to be done. You only have to add the class `img-circle` on the `img` elements:

``` html
<div class="row">
  <div class="col-xs-6 col-sm-3">
      <img src="images/placeholder-200x200.png" width="200" height="200"
         class="img-circle" alt="Generic placeholder thumbnail">
      <h4>Label</h4>
      <span>Something else</span>
  </div>

  <div class="col-xs-6 col-sm-3">
      <img src="images/placeholder-200x200.png" width="200" height="200"
         class="img-circle" alt="Generic placeholder thumbnail">
      <h4>Label</h4>
      <span>Something else</span>
  </div>

  <div class="col-xs-6 col-sm-3">
      <img src="images/placeholder-200x200.png" width="200" height="200"
         class="img-circle" alt="Generic placeholder thumbnail">
      <h4>Label</h4>
      <span>Something else</span>
  </div>

  <div class="col-xs-6 col-sm-3">
      <img src="images/placeholder-200x200.png" width="200" height="200"
         class="img-circle" alt="Generic placeholder thumbnail">
      <h4>Label</h4>
      <span>Something else</span>
  </div>
</div>  
```

If you save the above and reload the page on your browser, you will see this:

![./images/Information Containers Have Images With Circle Shape](./images/dashboard-information-containers-images-circle-shape.jpg)

Next thing that we want to do is to make sure that both the image and the text of the information container are center aligned. We will use the class `text-center` to all the
`div` elements that wrap the image and the text. 

``` html
<div class="row">
  <div class="col-xs-6 col-sm-3 text-center">
      <img src="images/placeholder-200x200.png" width="200" height="200"
         class="img-circle" alt="Generic placeholder thumbnail">
      <h4>Label</h4>
      <span>Something else</span>
  </div>

  <div class="col-xs-6 col-sm-3 text-center">
      <img src="images/placeholder-200x200.png" width="200" height="200"
         class="img-circle" alt="Generic placeholder thumbnail">
      <h4>Label</h4>
      <span>Something else</span>
  </div>

  <div class="col-xs-6 col-sm-3 text-center">
      <img src="images/placeholder-200x200.png" width="200" height="200"
         class="img-circle" alt="Generic placeholder thumbnail">
      <h4>Label</h4>
      <span>Something else</span>
  </div>

  <div class="col-xs-6 col-sm-3 text-center">
      <img src="images/placeholder-200x200.png" width="200" height="200"
         class="img-circle" alt="Generic placeholder thumbnail">
      <h4>Label</h4>
      <span>Something else</span>
  </div>
</div>  
```

`text-center` is a class provided by Twitter Bootstrap. It essentially applies the CSS style `text-align: center;` on the element that it is attached. There are more alignment related
classes provided by Twitter Bootstrap. The full list is here:

1. `text-left`. Corresponds to `text-align: left;`.
2. `text-right`. Corresponds to `text-align: right;`.
3. `text-center`. Corresponds to `text-align: center;`.
4. `text-justify`. Corresponds to `text-align: justify;`.

Having applied the `text-align` class on all information containers, reload the page on your browser. You will see this:

![./images/Content Aligned on Center](./images/dashboard-information-containers-text-align-center.jpg)

Although the above looks as if we have finished with the information containers, there is a small problem that becomes obvious if you see your page on a mobile device like iPhone 6 Plus,
a.k.a. on an extra small device. Try that with the developer tools mobile device mode.
![./images/Images Are Clipped On Extra Small Devices](./images/dashboard-images-are-clipped.jpg)

This can be remedied if you apply the class `img-responsive` to the `img` elements. Let's do that:

``` html
<div class="row">
  <div class="col-xs-6 col-sm-3 text-center">
      <img src="images/placeholder-200x200.png" width="200" height="200"
         class="img-circle img-responsive" alt="Generic placeholder thumbnail">
      <h4>Label</h4>
      <span>Something else</span>
  </div>

  <div class="col-xs-6 col-sm-3 text-center">
      <img src="images/placeholder-200x200.png" width="200" height="200"
         class="img-circle img-responsive" alt="Generic placeholder thumbnail">
      <h4>Label</h4>
      <span>Something else</span>
  </div>

  <div class="col-xs-6 col-sm-3 text-center">
      <img src="images/placeholder-200x200.png" width="200" height="200"
         class="img-circle img-responsive" alt="Generic placeholder thumbnail">
      <h4>Label</h4>
      <span>Something else</span>
  </div>

  <div class="col-xs-6 col-sm-3 text-center">
      <img src="images/placeholder-200x200.png" width="200" height="200"
         class="img-circle img-responsive" alt="Generic placeholder thumbnail">
      <h4>Label</h4>
      <span>Something else</span>
  </div>
</div>  
```
If you save the above and reload the page on your browser, while on iPhone 6 Plus emulation mode, you will see this:
![./images/Images Are Responsive](./images/dashboard-images-are-responsive.jpg)

Images are now responsive and they are displayed correctly on extra small devices.

However, if you try to display your page on large display device, now that we have introduced the `img-responsive` class, it seems that the
images are not centered aligned, as they were when we didn't have the `img-responsive` attached.

![./images/Images Are Not Centered On Large Displays When img-responsive](./images/dashboard-images-are-not-centered-with-img-responsive.jpg)

This is because the `img-responsive` class, amongst the others, it also turns the `img` tag to a `block` element with `display: block;`. We will use a CSS rule, to eliminate that
for the particular case that we have here:

``` CSS
#main-content-container .img-responsive {
    display: inline;
}
```
Add the above to your `stylesheets/main.css` file and reload the page on your browser. You will see this:
![./images/Images Are Centered Displayed And Are Responsive](./images/dashboard-images-are-centered-displayed-even-with-img-responsive-class-applied.jpg)

What remains to be done, is to change the color of the text `Something else`. If you view the image of the project representing our target, you will see that the text `Something else`
inside the information containers has a light gray color.
![./images/Something else Text Has Light Color](./images/light-gray-color-for-something-else-text.jpg)

We can quickly and easily apply a change on the color of a text element, by only applying one of the Twitter Bootstrap classes that deal with text color. These classes are:

1. `text-muted`. Applies the color <span style="display: inline-block; padding: 0 5px; background-color: #777; min-width: 30px;"> &nbsp; </span>
2. `text-primary`. Applies the color <span style="display: inline-block; padding: 0 5px; background-color: #337ab7; min-width: 30px;"> &nbsp; </span> 
3. `text-success`. Applies the color <span style="display: inline-block; padding: 0 5px; background-color: #3c763d; min-width: 30px;"> &nbsp; </span> 
4. `text-info`. Applies the color <span style="display: inline-block; padding: 0 5px; background-color: #31708f; min-width: 30px;"> &nbsp; </span> 
5. `text-warning`. Applies the color <span style="display: inline-block; padding: 0 5px; background-color: #8a6d3b; min-width: 30px;"> &nbsp; </span> 
6. `text-danger`. Applies the color <span style="display: inline-block; padding: 0 5px; background-color: #a94442; min-width: 30px;"> &nbsp; </span>
 
Let's apply the class `text-muted` on the span that holds the `Something else` text:
 
``` html
<div class="row">
  <div class="col-xs-6 col-sm-3 text-center">
      <img src="images/placeholder-200x200.png" width="200" height="200"
         class="img-circle img-responsive" alt="Generic placeholder thumbnail">
      <h4>Label</h4>
      <span class="text-muted">Something else</span>
  </div>

  <div class="col-xs-6 col-sm-3 text-center">
      <img src="images/placeholder-200x200.png" width="200" height="200"
         class="img-circle img-responsive" alt="Generic placeholder thumbnail">
      <h4>Label</h4>
      <span class="text-muted">Something else</span>
  </div>

  <div class="col-xs-6 col-sm-3 text-center">
      <img src="images/placeholder-200x200.png" width="200" height="200"
         class="img-circle img-responsive" alt="Generic placeholder thumbnail">
      <h4>Label</h4>
      <span class="text-muted">Something else</span>
  </div>

  <div class="col-xs-6 col-sm-3 text-center">
      <img src="images/placeholder-200x200.png" width="200" height="200"
         class="img-circle img-responsive" alt="Generic placeholder thumbnail">
      <h4>Label</h4>
      <span class="text-muted">Something else</span>
  </div>
</div>  
```
Save the above content and reload the page on your browser. You will see this:

![Text Is Now On Muted Color](./images/dashboard-text-is-not-text-muted.jpg) 
 
### Dashboard Table

The next part on our admin page is the dashboard table. We have already learned how to design tables using Twitter Bootstrap. So, this will not be a difficult exercise.

#### Section Header

We add the section header with the following piece of HTML code:

``` html
<div class="page-header">
    <h2>Section title</h2>
</div>
```
Put that exactly after the closing `row` `div` that contains the information containers we implemented earlier.  If you save the code and reload the page on your browser,
you will see this:

![./images/Section Header With Horizontal Line](./images/section-header-below-information-containers.jpg)

#### The Table

Let's now, add the table, below the section header:

``` html
<table class="table table-striped">
  <thead>
  <tr>
    <th>#</th>
    <th>Header 1</th>
    <th>Header 2</th>
    <th>Header 3</th>
    <th>Header 4</th>
    <th>Header 5</th>
    <th>Header 6</th>
    <th>Header 7</th>
    <th>Header 8</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>1,001</td>
    <td>Lorem</td>
    <td>ipsum</td>
    <td>dolor</td>
    <td>sit</td>
    <td>Lorem</td>
    <td>ipsum</td>
    <td>dolor</td>
    <td>sit</td>
  </tr>
  <tr>
    <td>1,002</td>
    <td>amet</td>
    <td>consectetur</td>
    <td>adipiscing</td>
    <td>elit</td>
    <td>amet</td>
    <td>consectetur</td>
    <td>adipiscing</td>
    <td>elit</td>
  </tr>
  <tr>
    <td>1,003</td>
    <td>Integer</td>
    <td>nec</td>
    <td>odio</td>
    <td>Praesent</td>
    <td>Integer</td>
    <td>nec</td>
    <td>odio</td>
    <td>Praesent</td>
  </tr>
  <tr>
    <td>1,003</td>
    <td>libero</td>
    <td>Sed</td>
    <td>cursus</td>
    <td>ante</td>
    <td>libero</td>
    <td>Sed</td>
    <td>cursus</td>
    <td>ante</td>
  </tr>
  <tr>
    <td>1,004</td>
    <td>dapibus</td>
    <td>diam</td>
    <td>Sed</td>
    <td>nisi</td>
    <td>dapibus</td>
    <td>diam</td>
    <td>Sed</td>
    <td>nisi</td>
  </tr>
  <tr>
    <td>1,005</td>
    <td>Nulla</td>
    <td>quis</td>
    <td>sem</td>
    <td>at</td>
    <td>Nulla</td>
    <td>quis</td>
    <td>sem</td>
    <td>at</td>
  </tr>
  <tr>
    <td>1,006</td>
    <td>nibh</td>
    <td>elementum</td>
    <td>imperdiet</td>
    <td>Duis</td>
    <td>nibh</td>
    <td>elementum</td>
    <td>imperdiet</td>
    <td>Duis</td>
  </tr>
  <tr>
    <td>1,007</td>
    <td>sagittis</td>
    <td>ipsum</td>
    <td>Praesent</td>
    <td>mauris</td>
    <td>sagittis</td>
    <td>ipsum</td>
    <td>Praesent</td>
    <td>mauris</td>
  </tr>
  <tr>
    <td>1,008</td>
    <td>Fusce</td>
    <td>nec</td>
    <td>tellus</td>
    <td>sed</td>
    <td>Fusce</td>
    <td>nec</td>
    <td>tellus</td>
    <td>sed</td>
  </tr>
  <tr>
    <td>1,009</td>
    <td>augue</td>
    <td>semper</td>
    <td>porta</td>
    <td>Mauris</td>
    <td>augue</td>
    <td>semper</td>
    <td>porta</td>
    <td>Mauris</td>
  </tr>
  <tr>
    <td>1,010</td>
    <td>massa</td>
    <td>Vestibulum</td>
    <td>lacinia</td>
    <td>arcu</td>
    <td>massa</td>
    <td>Vestibulum</td>
    <td>lacinia</td>
    <td>arcu</td>
  </tr>
  <tr>
    <td>1,011</td>
    <td>eget</td>
    <td>nulla</td>
    <td>Class</td>
    <td>aptent</td>
    <td>eget</td>
    <td>nulla</td>
    <td>Class</td>
    <td>aptent</td>
  </tr>
  <tr>
    <td>1,012</td>
    <td>taciti</td>
    <td>sociosqu</td>
    <td>ad</td>
    <td>litora</td>
    <td>taciti</td>
    <td>sociosqu</td>
    <td>ad</td>
    <td>litora</td>
  </tr>
  <tr>
    <td>1,013</td>
    <td>torquent</td>
    <td>per</td>
    <td>conubia</td>
    <td>nostra</td>
    <td>torquent</td>
    <td>per</td>
    <td>conubia</td>
    <td>nostra</td>
  </tr>
  <tr>
    <td>1,014</td>
    <td>per</td>
    <td>inceptos</td>
    <td>himenaeos</td>
    <td>Curabitur</td>
    <td>per</td>
    <td>inceptos</td>
    <td>himenaeos</td>
    <td>Curabitur</td>
  </tr>
  <tr>
    <td>1,015</td>
    <td>sodales</td>
    <td>ligula</td>
    <td>in</td>
    <td>libero</td>
    <td>sodales</td>
    <td>ligula</td>
    <td>in</td>
    <td>libero</td>
  </tr>
  </tbody>
</table>
```
If you save the above and reload the page on your browser, you will see this:
![./images/Table Is Correctly Displayed](./images/table-inside-the-second-section-on-dashboard.jpg)

However, there is a small problem when viewing the page on small devices. Try with the iPhone 6 Plus emulation. You will see that the table is truncated. Actually, the page
is horizontally expanded in order to display the whole table data. If the user scrolls in order to reveal the rest of the table data hidden, then the image graphs are scrolled
to the left too, and the final experience is very bad. 

<div id="media-title-video-non-responsive-table-demo.mp4">How the Wide Table Makes the Page Expand On the Right</div>
<a href="https://player.vimeo.com/video/194257782"></a>         
           
There is a very easy way we can fix this problem. We can use the Twitter Bootstrap `table-responsive`. We need to wrap the `table` element inside a `div` element with class
`table-responsive` and we are done.

``` html
<div class="table-responsive">
  <table class="table table-striped">
   ....
  </table>
</div>
```
  
Do the above change, save the file and reload the page on your browser, while you have the iPhone 6 Plus emulation on.
  
![./images/Responsive Table](./images/responsive-table.jpg)
  
This works much nicer when we scroll to see the content of the table that is not visible:

<div id="media-title-video-scrolling-on-responsive-table-to-reveal-hidden-content.mp4">./images/Responsive Table - Scrolling To Reveal Hidden Content</div>
<a href="https://player.vimeo.com/video/194258130"></a>

### Some Final Tuning

We have managed to bring our page to look exactly like the page we initially had as our target. There is a small improvement that I would like to work with you on.

When the browser height is short, user scrolls on the main dashboard area, in order to access/see the content of the table that is not visible. For example,
below, you can see what the user sees when he scrolls to the bottom of the page in order to reveal the bottom of the table:

![./images/Bottom Of Page - Some Small Problems](./images/bottom-of-the-page.jpg)

There are two problems with the sidebar:

1. The sidebar does not extend to the end of the page.
2. The sidebar top menu options disappear, as the sidebar content scrolls along with the rest of the main content. We want all the sidebar options to be accessible and visible all the
time, so that the user is able to click on them irrespective of the actuall scroll position of the main content.

If we solve the 2nd problem, the 1st problem will be solved too.

In order to have a div being always visible, irrespective of the scrolling position of the browser window, then we need to fix its position. Let's add the following in our CSS file:

``` css
.sidebar {
    /* fix the position of the sidebar */
    position: fixed;
    left: 0;
    top: 55px;
}
```
Save the above and reload the page on your browser. You will see this:

![./images/Sidebar With Fixed Position - Problem On Main Content](./images/fixed-position-for-sidebar-dashboard-main-content-overlap.jpg)

This is an improvement with regards to sidebar being on fixed position. Try to scroll the main content and you will see that the option on the sidebar, all of them, remain visible.

On the other hand, it has brought the main content part far to the left, overlapping with the sidebar content. This is because, the sidebar `div` is not part of the normal 
page elements flow. We have specified the width of the sidebar `div`, with the grid classes `col-sm-3` and `col-md-2`, but the actual position has been fixed, and, hence, this
element is not taken into account when browser positions the `#main-content-container` `div`.

How can we solve this problem? Do you remember the `col-*-offset-*` classes, which allow defining how much space will be left blank, at the left side of a column?
We will take advantage of this and we will specify offset of the main container column, the one with id `main-content-container`.

Change its class from `col-sm-9 col-md-10` to `col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2`.

If you save the page and reload it on your browser, you will see this:
![./images/Dashboard With Offset Columns](./images/page-with-correct-dashboard-offseting.jpg)

And if you scroll at the bottom of the page, you will see this:

![./images/Scrolling At The Bottom Of The Page](./images/scrolling-at-the-bottom-of-the-page.jpg)

As you can see, the sidebar is now displayed perfectly. Occupying the whole available height and staying on the same position even if we scroll the main content of the page.


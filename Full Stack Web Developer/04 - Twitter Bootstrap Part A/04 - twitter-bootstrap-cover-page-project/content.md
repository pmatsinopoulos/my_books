This is a chapter that will teach you how to create another nice looking Twitter Bootstrap project.
We call this a cover page project because it encompasses a large background image that covers the whole browser page.
All the content appears on top of this page.

The purpose of this exercise is to combine some Twitter Bootstrap knowledge with some techniques that we have learned in the
HTML & CSS chapters and that are not Twitter Bootstrap specific.

Here is the page that we will build:

![./images/Cover Page Project](./images/cover-page-project.jpg)

### Notable Things Of This Page

1. There is a background image that covers the whole page.
2. The image covers the page no matter what the size of the page is.
3. Although the original image is bright, the image displayed on the page has reduced brightness. This helps the text that overlays
the image to have a better contrast and be easier to read.
4. The top navigation bar is similar to the navigation bars that we have built earlier. However, the non-brand part of the options
is aligned to the right. 
5. The main content of this page is vertically and horizontally centered. 
6. There is a footer fixed at the bottom of the page, with text aligned at the center.

### Empty Twitter Bootstrap Page

Let's start with the empty twitter bootstrap page:

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Twitter Bootstrap Cover Page</title>

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

Save the above file as `index.html` and also, create an empty file `stylesheets/main.css`. If you load this page on your browser, you will see an empty page,
but with Twitter Bootstrap loaded.

### The background image
 
We have already learned how to apply background images. We are going to do that on the `body` element of this page. Add the following rules to your `stylesheets/main.css` file:

``` css
html {
    height: 100%;
    background-color: White;
}

body {
    min-height: 100%;
    background-color: #2b542c;
    background-image: url("../images/prague-czech-republic.jpg");
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: left top;
    background-size: 100% 100%;
}
```

This is pretty standard. If you want, you can study again the chapter "Image Backgrounds" in section "HTML & CSS". 

If you save that and reload the page, you will see this:

![./images/Background Image Applied to body Element](./images/background-image-applied-to-body-element.jpg)

As you can see above, the image is clearly displayed. It covers the whole browser window, and if you try to resize it, you will see that it is being automatically adjusted to
cover it.

### The Image Brightness

Let's see how we can reduce the brightness of the image. We can definitely change the brightness of the image using an image editing software like GIMP, or Adobe Photoshop. But,
if you do not know how to do that, or if you do not want to change the original image, you can always do the following trick.

You define a `div` element, as child of `body` element. This `div` will be positioned absolutely at the top left corner of the page, 
and will cover the whole width and height of its parent `body` element. Let's call this `div` `cover` div. The `cover` `div`, needs to have a background color
black, but with some transparency so that some of the image behind it to be visible. We will try `rgba(0, 0, 0, 0.5)` for that. 

Let's do that. 

Add the `cover` div:

``` html
<body>

    <div id="cover"></div>

</body>
```
and add the following CSS rules:

``` css
body {
    position: relative;
}
#cover {
    position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    background-color: rgba(0, 0, 0, 0.5);
}
```
As you see above, it is a prerequisite for the `position: absolute;` on `#cover` to work correctly, that its parent element, `body`, to have a non-static positioning.
That's why we set the `position: relative;` to `body` element.

If you save the above and reload the page on your browser, you will see this:

![./images/Black Cover With Transparency Applied](./images/cover-with-black-background-color-applied.jpg)

This is exactly the result that we wanted to achieve. The background image is, now, a little bit dark, so any text that we will later on overlay will be easy to read.

### The Navigation Bar

We are now going to attach a navigation bar, like we did in the previous chapters.

Add the following content below the `cover` `div`:

``` html
<nav id="navigation-bar-container" class="navbar navbar-inverse navbar-fixed-top">

  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
    <span class="sr-only">Toggle navigation</span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
  </button>

  <div class="navbar-header">
    <a class="navbar-brand" href="#">Cover</a>
  </div>

  <div id="navbar" class="collapse navbar-collapse">
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#about">About</a></li>
      <li><a href="#contact">Contact</a></li>
    </ul>
  </div>

</nav>
```
This is nothing new. This is a standard Twitter Bootstrap navigation bar. 
    
Save the HTML content with navigation bar that we have added above and reload the page on your browser. You will see this:

![./images/Standard Navigation Bar Attached to The Page](./images/navigation-bar-attached.jpg)

The result is expected. We have attached the standard navigation bar code. What we want to do now, is to limit the width of the bar so that it does not occupy the whole width.
Also, we want it to be in the center of the page. We also want some top margin and the border to have some small radius. We have already done this in the previous chapter.

Before actually implementing that, we will also set another requirement. We want the navigation bar to be full width for extra small devices, but only 50% of the page width for
all other cases.

The following CSS rules will satisfy these requirements:

``` CSS
#navigation-bar-container {
    width: 100%;
    margin: 10px auto;
    border-radius: 10px;
}

@media (min-width: 768px) {
    #navigation-bar-container {
        width: 50%;
    }
}
```
As you can read from above, the default width of the navigation bar is `100%`. We are using a `@media` query rule in order to turn that to `50%` for larger devices.

Add the above content to your `stylesheets/main.css` file, save and reload your page. You will see this (assuming that you have a display with width >= 768px):

![./images/Navigation Bar As Displayed On Large Devices](./images/navigation-bar-large-devices.jpg)

If you reduce the size of your browser window to less than 768px, you will see that the navigation bar occupies the whole width:
 
![./images/Navigation Bar Occupies the Whole Page Width on Extra Small Devices](./images/navigation-bar-occupies-the-whole-width-for-extra-small-devices.jpg)

Further working on the navigation bar, what we want to achieve now is to pull the non-brand options of the menu, to the right. This can be easily done with the `navbar-right` Twitter
Bootstrap class that needs to be applied to `ul` holding these options.

Let's add the `navbar-right`:

``` html
<body>

    <div id="cover"></div>

    <nav id="navigation-bar-container" class="navbar navbar-inverse navbar-fixed-top">
    
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    
      <div class="navbar-header">
        <a class="navbar-brand" href="#">Cover</a>
      </div>
    
      <div id="navbar" class="collapse navbar-collapse">
        <ul class="nav navbar-nav navbar-right">
          <li class="active"><a href="#">Home</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </div>
    
    </nav>

</body>
```

![./images/Highlighted The navbar-right class](./images/navigation-bar-navbar-right-class-applied-code-highlighted.jpg)

If you save the above and reload the page on your browser, you will see this:

![./images/Options Moved To The Right - There is a Small Problem](./images/navbar-right-has-been-applied-but-there-is-a-small-problem.jpg)

As you can see above, the non-brand navigation options have been moved to the right, but there is a small problem. They are snapped at the right edge of the navigation bar border.
This is because the `navbar-right` class applies `-15px` right margin to the `ul` applied. We will eliminate that by the following CSS rule:

``` css
#navbar ul {
    margin-right: 0;
}
```
If you add the above content to the end of your `stylesheets/main.css` file and reload the page, you will see this:

![./images/Small Problem On Navbar Options Fixed](./images/navigation-bar-ul-for-options-right-margin-eliminated.jpg)

We have not finished with the navigation bar yet. If you compare the current version to the original one, you will see that the font size and color are different. 

Let's do the following amendments to the CSS rules with regards to this:

``` CSS
#navigation-bar-container a.navbar-brand,
#navbar ul a {
    font-weight: 900;
}

#navigation-bar-container a.navbar-brand {
    font-size: 3.2rem;
}

#navbar ul a {
    font-size: 1.8rem;
}
```
If you save the above and reload the page on your browser, you will see this:

![./images/Navigation Bar With Correct Font Size and Color](./images/navigation-bar-with-correct-font-size-and-color.jpg)

These are the correct font size and color properties. And with this, we finished the work on the navigation bar.

### ./images/Content On Center Of Page

We continue by trying to implement the following:

![./images/Content On Center Of Page](./images/cover-page-project-center-content.jpg)

We have some piece of HTML content that appears on the center of the page, both horizontally and vertically. Let's add, first, the HTML content:

``` html
<div id="center-content">
  <h1>Cover your page.</h1>
  <p class="lead">This content will always be vertically and horizontally aligned</p>
  <p class="lead">
    <a href="#" class="btn btn-lg btn-success">Learn more</a>
  </p>
</div>
```
Add the above below the `nav` element, before the end of `body` element. This is all pretty simple HTML code. We have already learned about this in the previous chapters.

Let's save that and reload the page on your browser. You will see this:

![./images/Content Placed On Top Left - Cannot Easily Read](./images/content-is-drawn-darker.jpg)

As you can see, the content has been placed on top left. And it is not easy to read. This is where we have to introduce our `z-index` skills, because
it seems that the `#cover` `div` is being drawn after the content we just put above.

But, wait! Why don't we have the same problem with the navigation bar? This is because the navigation bar already has `position: fixed` with `z-index` a positive
integer (equal to `1030` - you only have to inspect with Developer Tools to confirm that), whereas our `#center-content` `div` has `position` `static`. 
So, the `#center-content` is the first non-positioned element:
 
1. `body` is positioned, because it has `position` `relative`.
1. `#cover` is positioned, because it has `position` `absolute`.
1. `#navigation-bar-container` is positioned, because it has `position` `fixed`.

If you go back to "Positioning" chapter in section "HTML & CSS", you will read that positioned elements and non-positioned elements
will better play well, if you control the stack context they belong to. And a new stack context starts whenever we use the `z-index` property
with value different from `auto`.

In other words, we are going to start a new stack context by setting `z-index: 0` to the `body` element. Then, the `#cover` is going to have `z-index` equal
to `-1`, because we want it to be behind every non-positioned element inside `body` element. Again, make sure you read the last part
of the chapter "Positioning" in section "HTML & CSS", in which we explain the order things are drawn by the browser.

Having said the above, please, go ahead and make the following amendments to `body` and `#cover` CSS rules:

``` css
body {
  ...
  z-index: 0;
}

#cover {
  ...
  z-index: -1;
}
```

If you save and load the page on your browser, you will see this:

![./images/Content On Foreground But Still Difficult To Read Text](./images/content-drawn-on-foreground-but-still-with-text-being-difficult-to-read.jpg)

You can tell from the colours of the button that the content is now drawn on the foreground. But still, we cannot easily read the text, although
this is only a problem of the colour of the text.

Let's change the color first. We will make sure that the color of any text element is `white`. Add `color: white;` to the
`body` element in your CSS file.

If you do that, and reload the page, you will see this:

![./images/Content Now With Correct Color](./images/content-with-correct-color.jpg)

That's good. The content color is looking good. Now, we need to fix the position.

In order to fix the position, we will use the `table/table-cell` technique.

1. We will tell browser to assume that the `div` that contains the main content is a table cell. We will do that by setting `display: table-cell;` for this element.
2. We will tell browser to assume that the parent element, a.k.a. the `body` is a table. We will do that by setting `display: table;` for the `body` element.
3. We want the table (`body`) to occupy all the available space defined by its parent (`html`). For that reason, we will define `width:100%; height: 100%;` for the `body` element.
4. We want the document root to occupy all the available space given by the browser window. Hence, we will set `width: 100%; height: 100%;` for the `html` element too.
5. We will tell the table cell (`center-content` `div`) to center its content both horizontally (`text-align: center;`) and vertically (`vertical-align: middle;`).

These are the rules:

``` css
html {
    width: 100%;
    height: 100%;
}

body {
    display: table;
    width: 100%;
    height: 100%;
}

#center-content {
    display: table-cell;
    text-align: center;
    vertical-align: middle;
}
```

If you save the above rules in your CSS file and reload the page on your browser, you will see this:

![./images/Content Correctly Placed on Center Of Page](./images/content-placed-on-center-of-page.jpg)

> *Note:* There are other techniques that one can use to center content vertically. This technique, with `table/table-cell` makes sure that even if you change the actual content, the margins, top and bottom, will
be adjusted automatically.

### Footer

We are now left with creating the footer. This is pretty much easy and we have done that in the past. Let's add the `footer` element first:

``` html
<footer id="footer-content">
  <small>Copyright &copy; Tech Career Booster</small>
</footer>
```
Before closing `body` add the above. Save the content and reload the page on your browser. You will see this:

![./images/Footer Added But Layout Destroyed](./images/added-footer-destroys-the-whole-layout.jpg)

The layout has been destroyed. But it is easy to fix. We need to specify the position attributes of the footer.

``` css
#footer-content {
    position: absolute;
    bottom: 20px;
    left: 0;
    width: 100%;
    text-align: center;
}
```

We need to add the above to the CSS rules. The footer needs to have `position` `absolute`.
Save your CSS file and reload the page on your browser. You will see this:

![./images/After Correcting Footer Position - Page Is Ready](./images/after-correcting-the-position-of-the-footer.jpg)

After correcting the footer position, the page is now ready.

### Closing Note

We have seen how we can have the navigation bar options be on the right side of the bar. We have also learned about a technique to center content vertically and horizontally.







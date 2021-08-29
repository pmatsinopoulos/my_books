The following chapters on Twitter Bootstrap will be teaching you the framework concepts while trying to create a project at the same time.
Let's start, then, with our first project.

Assume that we want to build the following web site:

![./images/Target Project 1 - Basic Template With Top Nav Bar](./images/responsive-starter-with-menu.jpg)

This project has the following characteristics:

1. It has a navigation bar. This navigation bar is responsive. This means that when you resize your browser to mimic the size of a mobile phone, 
you will see something like that:

![./images/./images/This is How Site Looks Like On Mobile Devices](./images/web-site-nav-bar-collapsed-to-hamburger-icon.jpg)

As you can see, the menu options have been collapsed and turned to a hamburger icon. If the user wants to get the list of menu options needs to click on this icon.

![./images/Menu Options Appear on Hamburger Icon Click](./images/menu-options-are-hidden-behind-the-hamburger-icon.jpg)

There are other features on this Web site that you take for free from Twitter Bootstrap. For example, when you mouse over the options, you will see that the options change color and intensity.

Let's try to build this Web site from scratch, using Twitter Bootstrap:

### Start with HTML

Let's start with the basic HTML that includes a nav bar and a list of items that will be the menu options. Like this:

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Image Roster</title>

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

    <nav>

      <ul>
        <li ><a href="#">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#contact">Contact</a></li>
      </ul>

    </nav>

  </body>
</html>
```
Save the above into the file `index.html` and load the page on your browser. Note that referenced `stylesheets/main.css` does not contain anything, for the time being.

You will see this:

![./images/Page With Nav Bar And Menu Items But Not Styled](./images/nav-bar-with-elements-but-not-styled.jpg)

I guess that this was expected. The `body` element contained nothing but a block element `nav` and a `ul` with the menu options. Note that we are using the semantic
HTML5 element `nav`, instead of just a `div`.

### The classes `nav` and `navbar-nav` on the `ul` element

We will first add the class `nav` on the `ul` element that holds the menu options. This will remove the bullets from the list. Do the following change. Instead of
`<ul>` write `<ul class="nav">`. Save the file and reload the page. You will see this:

![./images/Added 'nav' class on 'ul' element](./images/ul-with-class-nav.jpg)

That's a small improvement of course. Let's add the class `navbar-nav` to the `ul`. So, `ul` now needs to be like this:

``` css
<ul class="nav navbar-nav">
```
![./images/Now Menu Items Appear On One Line](./images/ul-with-class-nav-navbar-nav.jpg)

That's better. The menu options appear on one line now.

### Wrap in a collapsible div

In order for the list of menu items to be collapsible, i.e. to be replaced with a hamburger icon on small devices, that when clicked would enlist the menu options,
you need to wrap the `ul` into a div that has specific classes. Wrap the `ul` like this:

``` html
<div class="collapse navbar-collapse">
  <ul class="nav navbar-nav">
    <li ><a href="#">Home</a></li>
    <li><a href="#about">About</a></li>
    <li><a href="#contact">Contact</a></li>
  </ul>
</div>
```

If you save the above and reload your page, you will not see any difference to that you had before. However, if you shrink your page to width less than 768px, you
will see that the menu list will disappear. And then if you enlarge above 768px, you will see that coming up again. This feature is the result of the two classes
that we have added in the wrapper div above.

### The nav bar header

If you go back and see again the final result, you will see that there is the link with text `John Woo`, which is not hidden when the page shrinks to mobile size.
It is always visible and it is supposed to be a link that would take the user to the home page of the site. It is not part of the list of menu items.

Let's put that above the collapsible div, but still inside the `nav` element. The whole `body` content now is as follows:

``` html
<body>

    <nav>

      <a href="#">John Woo</a>

      <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
          <li ><a href="#">Home</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </div>

    </nav>

</body>
```
  
If you save the above and reload your page, you will see the `John Woo` link on the left, which, if you shink the page, remains on page and does not disappear like 
the menu options do.
![./images/Brand Link On Top Left](./images/brand-link-on-the-left.jpg)

### Make the Brand Link Stand Out
 
The brand link, on top left, needs to be on the same level like the menu and it needs to stand out a little bit. Let's do that by adding the class `navbar-brand` to the
anchor. So, the anchor needs to be like that:

``` html
<a class="navbar-brand" href="#">John Woo</a>
```

If you save the file and reload your page, you will see this:

![./images/Brand Link Stands Out On the Left](./images/brand-link-stands-out-on-the-left.jpg)

### Add some color to our nav bar

Let's add some color to our nav bar. A very basic way you can do that is by adding the class `navbar-inverse` or `navbar-default`. The `navbar-inverse` will turn
the letters to light color and the background to dark one. The `navbar-default` will do the opposite. 

So, do the following change. Add the class `navbar-inverse` to your `nav` element like this:

``` html
<body>

    <nav class="navbar-inverse">
      <a class="navbar-brand" href="#">John Woo</a>

      <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
          <li ><a href="#">Home</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </div>

    </nav>

</body>
```
If you save the above and reload your page you will see this:
![./images/Navbar With Inversed Colors](./images/navbar-with-inversed-colors.jpg)
Hover your mouse pointer over the menu options. You will see how the links are getting lighter.

### Making the nav keep its color when page is shrunk

Now, if you try to shrink your page to width less than 768px, you will see that the navbar loses its color:

![./images/Navbar Loses Its Color On Small Devices](./images/navbar-loses-its-color-on-small-devices.jpg)

In order to make the navigation bar keep its color, we need to add the class `navbar` on the `nav` element. Let's do that:

``` html
<body>

    <nav class="navbar navbar-inverse">
      <a class="navbar-brand" href="#">John Woo</a>
    
      <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
          <li ><a href="#">Home</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </div>
    
    </nav>

</body>
```
If you save and reload your page again, when the page is shrunk, you will see this:
![./images/Navigation Bar With Its Inverse Color On Small Devices](./images/navbar-with-its-inverse-color-when-page-is-displayed-on-small-devices.jpg)
 
### Add the button to unfold menu options on small devices
 
Let's add a button. This will be used to click and unfold the menu options on small devices.
 
``` html
<body>

    <nav class="navbar navbar-inverse">
      <button type="button">
      </button>
      
      <a class="navbar-brand" href="#">John Woo</a>

      <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
          <li ><a href="#">Home</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </div>

    </nav>

</body>
```

Make sure that `body` element is as above. As you can see, we have added a `button` element, above the brand link. Save and reload the page. You will see this:

![./images/Button To Unfold Menu On Small Devices](./images/button-to-unfold-menu-items-on-small-devices-version-1.jpg)

This is pretty bad. Indeed. But it's a start. 

### Make the button appear Only on Small Devices

The problem we have with the button, at the moment, it is that it always appears. What we want, is that it appears only on small device displays, less than 768px,
and disappear for larger devices. Also, when it appears on small devices, it needs to be aligned to the right.

In order to do that, we can add the class `navbar-toggle`. Let's do that.

``` html
<body>

    <nav class="navbar navbar-inverse">
      <button type="button" class="navbar-toggle">
      </button>

      <a class="navbar-brand" href="#">John Woo</a>

      <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
          <li ><a href="#">Home</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </div>

    </nav>

</body>
```
If you save the above and your reload your page, you will see this:  
  
![./images/Button Is Not Displayed on Large Devices](./images/button-disappears-on-large-devices.jpg)
  
which shows that the button is not displayed on large devices. 

But, is it displayed on small devices? Shrink your page so that it has width less than 768px and the menu disappears. Do you see the button appear again?
The truth is that the button is there, on the top-right hand side. But it is a little bit difficult to see. But it is not hidden. 

![./images/Button Is Hardly Visible on Small Devices](./images/button-is-on-top-right-hand-side-difficult-to-see.jpg)

### Create the Humburger Icons
 
The button does not look good on small devices, and this is because it does not have actual content inside. In order to create the visual icon of the hamburger,
Twitter Bootstrap gives as the class `icon-bar`. We only have to apply that on a span, so many times as the number of hamburger bars that we want. Let's do it for
3 bars. Change the content of the `button` element to be as follows:

``` html
  <body>

    <nav class="navbar navbar-inverse">
      <button type="button" class="navbar-toggle">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>

      <a class="navbar-brand" href="#">John Woo</a>

      <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
          <li ><a href="#">Home</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </div>

    </nav>

</body>
```

As you can see above, we have added 3 bars inside the `button` element. Each bar is created with a `span` that has the class `icon-bar`. Save the above and reload
the page so that the display is narrow enough to show the hamburger icon, and not the menu items. You will see this:
![./images/Hamburger Icon Is Displayed Correctly on Small Devices](./images/hamburger-icon-is-displayed-correctly.jpg)

### Add behaviour to button

We now need to add behaviour to the button. When the button is clicked the menu options unfold. We will do that by adding two `data-*` attributes to the `button` 
element:

1. `data-toggle="collapse"`, which tells Twitter Bootstrap that this button is used to collapse/unfold a specific area of the HTML document
2. `data-target="#navbar"`, which tells Twitter Bootstrap that the specific area that needs to be collapsed/unfolded is the one that is selected with the
CSS selector `#navbar`. Of course, since there is no such element (with id `navbar`) in our HTML document, but the element that we want to fold/unfold is
the container that holds the menu items list, we will add the `id` attribute with value `navbar` to this particular `div`. Let's do that:

The `body` element now needs to be like this:

``` html
<body>

    <nav class="navbar navbar-inverse">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>

      <a class="navbar-brand" href="#">John Woo</a>

      <div id="navbar" class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
          <li ><a href="#">Home</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </div>

    </nav>

</body>
```
  
If you save and reload the page, while it is on size less than 768px, you will be able to click on the hamburger icon button and fold/unfold the menu options.

![./images/Button Unfolds The Options](./images/button-unfolds-the-menu-options.jpg)

### Fix the layout of menu on mobile devices

The problem with the menu on mobile devices is that it has wrong position. The list with options should start below the brand link and on the right of it.

In order to fix that, we will wrap the brand link into its own div element with class `nav-header`. This will make sure that next div element, the one for menu, appears below that.
This is the new version of the `body` element code:

``` html
<body>

    <nav class="navbar navbar-inverse">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>

      <div class="navbar-header">
        <a class="navbar-brand" href="#">John Woo</a>
      </div>

      <div id="navbar" class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
          <li><a href="#">Home</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </div>

    </nav>

</body>
```
If you save the above code and reload your page, then, with the page display on width less than 768px, and the menu button clicked, you would see this:
![./images/./images/This is How Site Looks Like On Mobile Devices](./images/button-unfolds-menu-which-now-appears-below-the-brand-link.jpg)

### Final touches to our navigation bar

1. `navbar-fixed-top` on `nav` element. This will fix the position of the navigation of the bar at the top of the page.
2. We will wrap the whole `nav` content into a `.container` div in order to give some left and right margin to its content.
3. We will also add some elements and attributes to make the whole navigation bar being ready to be used with assistive technologies, for example with screen readers.
4. We will also add the class `active` to the first menu item, to indicate that we are on the page that this link corresponds to.

Here is the final version of our page with the navigation bar ready:

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Image Roster</title>

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

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">

        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>

        <div class="navbar-header">
          <a class="navbar-brand" href="#">John Woo</a>
        </div>

        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
        </div>
      </div>

    </nav>

  </body>
</html>
```

Save all the above and reload the page on your browser. You will see the navigation bar working perfectly. And we have not written a sigle line of CSS rules.
Everything has been provided by Twitter Bootstrap for us.

### Adding the main content

We have added/created the navigation bar. Let's now add the main content of our page. Add the following below the navigation element:

``` html
<div class="container">

    <h1>John Woo Portfolio</h1>
    <p>Full-Stack Web Developer that can turn your ideas to fantastic responsive Web applications</p>

</div><!-- /.container -->
```

As you can see above, we have wrapped our main content inside a `container`. Then, inside the `container` we have added an `h1` element and a paragraph.
Pretty simple. But, let's save the content and load the page on the browser. You will see this:
     
![./images/Navigation Bar Hides the Main Content](./images/main-content-is-covered-by-the-navigation-bar.jpg)

We have faced this problem again in the past, when we were learning to create navigation bars, in the `HTML & CSS` section. Here, in order to resolve this,
we will have to add some custom CSS. We will have to ask the `body` to position its actual content, so many pixels below the top, as the height of the navigation bar.
![./images/The Height of Navigation Bar is 50px](./images/height-of-the-navigation-bar-is-50px.jpg)

Write the following content inside your `stylesheets/main.css` file:

``` css
body {
    padding-top: 50px;
}
```
And save and load your page. You will see this:

![./images/Content Is Displayed Without Problem Below Nav Bar](./images/content-is-displayed-correctly-below-the-navigation-bar.jpg)

### Make the paragraph content stand out

There is small difference to the original site. The paragraph content is plain, normal size text. We want to make it stand out. We will use the class `lead` for that
(again provided to us by Twitter Bootstrap).

Make the `p` element be like that:

``` html
<p class="lead">Full-Stack Web Developer that can turn your ideas to fantastic responsive Web applications</p>
```

If you save the above and reload the page on your browser, you will see this:

![./images/Final Version of the Page is Ready](./images/final-page-is-ready.jpg)

which matches the original page that we wanted to build.
 
## Closing Notes
 
We have created a Web site with a responsive navigation bar, without writing any single piece of CSS code. Twitter Bootstrap has provided everything to us.
We only had to use the correct classes (and in one case two `data-*` attributes).

Don't forget to upload your work both to Github and to Netlify. When on Netlify, then browse your site with your mobile or your tablet to see how it works.







     
     
    

  
  


 



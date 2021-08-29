Modals is a very user-friendly way to present information to the user or ask for information to be given.
The modals are windows that overlay your page and do not allow the user to interact with other parts of your page.
In other words, user has to close the modal before returning back to the main page. 

1. User can read the information and then close the modal. Modal can have a `Close` button, or a `[X]` button on the
top-right corner that closes the modal.
2. User can fill in some form and then click on the submit button of the form. This usually closes the modal and returns
the user back to the main page.

Let's see a modal in action:

![./images/Modal Example](./images/modal-example.jpg)

Twitter Bootstrap offers modals for free, as part of the JavaScript integration. Let's see how.

## Bootstrap JavaScript Files

In order to be able to use Modals you will need to reference the Twitter Bootstrap JavaScript files. These need to be referenced **after** the jQuery
JavaScript files.

This is a bare minimum HTML page that references Twitter Bootstrap and jQuery:

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bare Minimum HTML page with Bootstrap and jQuery</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"
            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
            crossorigin="anonymous"></script>

    <!-- Bootstrap JavaScript files AFTER jQuery -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" 
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    
  </head>

  <body>
  
  
  </body>
</html>
```

![./images/Bare Minimum HTML Page with Bootstrap CSS, jQuery and Bootstrap JavaScript](./images/source-code-of-bare-minimum-html-page-with-bootstrap-and-jquery.jpg)

As you can see above, we are using a reference to a CDN version of Twitter Bootstrap JavaScript files. And we load it after the jQuery files,
because Twitter Bootstrap JavaScript files rely on jQuery.

You can read about the Twitter Bootstrap CDN references [here](http://getbootstrap.com/getting-started/#download-cdn).

Note that if you want to add custom, i.e. your own, CSS and JavaScript files, you will have to put them at the correct positions. Your own custom
CSS file needs to be put after the third-party CSS files, hence, after Twitter Bootstrap CSS references. Same goes for your custom JavaScript
file. Its reference needs to be put after the third-party JavaScript files, hence, after jQuery and Twitter Bootstrap.
 
![./images/Position of Customer CSS and JavaScript References](./images/source-code-of-bare-minimum-html-page-with-bootstrap-and-jquery-custom-css-javascript-position.jpg)

## Modal Markup
 
Having prepared our bare minimum HTML page let's add some modal functionality on it.

``` html
<div class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
      
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">This is an h4 inside Modal Header</h4>
        
      </div>
      
      <div class="modal-body">
      
        <p>This is a paragraph inside Modal Body</p>
      
      </div>
      <div class="modal-footer">
      
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      
      </div>
    </div>
  </div>
</div>
```

Add the above content inside the `body` of the page. Load the page on your browser. What you will see is a blank page. This is because the
modal is not meant to be displayed, unless the user chooses to do so, or it carries out an action that triggers the display of the modal.

But, if you see the source page of the code, it will be like this:

![./images/Source Page of a Page with a Modal](./images/source-code-of-pape-with-a-modal.jpg)

The classes that make the modal content invisible are the classes `modal` and `fade`. The `modal` adds a `display:none;` and the `fade` adds an
`opacity: 0`.

See in the following picture how disabling these two properties makes the modal appear on the page.

![./images/Page with Small Lion Image](./images/make-the-modal-appear-by-unsetting-display-and-opacity-properties.jpg)

All the modals have the same HTML markup. These are its main parts:

![./images/Main Parts of Modal HTML Markup](./images/source-code-of-pape-with-a-modal-standard-modal-parts.jpg)

* Three `div`s that cascade each other and they contain the actual content of the modal:
    * (1) A `div` with classes `modal` and `fade`.
    * (2) A `div` inside the previous one (the one with class `modal fade`) with class `modal-dialog`
    * (3) A `div` inside the previous one (the one with class `modal-dialog`) with class `modal-content`
* Three sibling `div`s, all children of the div with class `modal-content`, same nested level.
    * (4) A `div` for the modal header with class `modal-header`.
    * (5) A `div` for the modal body with class `modal-body`.
    * (6) A `div` for the modal footer with class `modal-footer`.

Note that parts 4, 5, and 6 are optional. Also, inside them, you can put (almost) any HTML markup that you like.
 
## Triggering the Modal
 
But, modals are hidden until user takes an action that would display them, or until the Web application decides that it has
to display the modal. How does this trigger take place?

We will continue our example by introducing a button that would allow the user to open the modal dialog. Let's amend our HTML body content
as follows:

``` html
<button class="btn btn-lg btn-success" data-toggle="modal" data-target=".modal">Open Modal</button>
```

Add the above markup exactly before the modal starting div, below the `<body>` opening tag. 

Save the HTML page and reload it on your browser. You will see this:

![./images/Page With Button To Open Modal](./images/page-with-button-to-open-modal.jpg)

If you click the button `Open Modal` you will see this:

![./images/Modal Displayed After Clicking On Button](./images/modal-displayed-after-clicking-on-button.jpg)

Perfect! This is what a modal is.

Let's explain some important details about the button markup.

1. It has the attribute `data-toggle` with value `modal`. This is necessary to indicate to Bootstrap that this is a button that, when clicked,
will open a modal dialog.
2. It has the attribute `data-target` which has a value being a CSS selector and needs to uniquely select the HTML element that holds the modal HTML
markup. In our case, we have used the value `.modal`, because this is the class that uniquely matches the `div` holding our modal markup.
Usually, here, we use a CSS selector that represents an id, rather than a class, in order to make the identification unique and avoid ambiguities.

Note that with this little HTML markup and using the data attributes that are identified by Twitter Bootstrap we have managed to add dynamic behaviour
to our page. We didn't have to write any JavaScript. All this modal JavaScript functionality has been provided by Twitter Bootstrap JavaScript library.

## More on Modal Markup

Besides the standard HTML modal markup that we have talked about before, there are some other elements on the previous example that deserve our 
attention.

### The close [x] button on the top right

![./images/The [x] button](./images/modal-displayed-after-clicking-on-button-close-x-button.jpg)

./images/The [x] button that you see on the top-right corner can be used by the user to click on and close the modal dialog. Its markup has been put inside
the `modal-header` `div` and has as follows:

``` html
<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
```

It is a `button` of class `close` with the data attribute `data-dismiss` equal to `modal`, instructing Twitter Bootstrap to close the modal if clicked.
The actual icon appearing there is the `<span aria-hidden="true">&times;</span>`. The `&times;` entity element is a special character displayed as the
cross [x].

Inside the `button`, you can use any HTML that can suit there and that can indicate to the user the ability to close the modal. For example,
Twitter Bootstrap offers [a series of glyphicons](http://getbootstrap.com/components/#glyphicons). Let's try to use one of them. Replace the
HTML markup `<span aria-hidden="true">&times;</span>` with

```
<span aria-hidden="true" class="glyphicon glyphicon-remove"></span>
```

Save, reload the page and open the modal. You will see this:

![./images/A Glyphicon Used As Icon on Close Button](./images/modal-with-glyphicon-on-close-button.jpg)

As you can see, now the close button icon, on top-right corner is a little bit different. This is because the `glyphicon glyphicon-remove` is used as a class
for the `span`. Note that we have removed completely the HTML content of the `span` element. The class with correct values is enough for Bootstrap
to display the correct icon from the glyphicon set of icons.
 
On the next example, we are using `glyphicon-remove-circle`.

![./images/Using glyphicon-remove-circle](./images/close-button-glyphicon-circle.jpg)

### The close `[Close]` button at the bottom

There is a button inside the `modal-footer` `div` that works like the one on the top-right corner. It is closing the modal dialog. Its markup is:

``` html
<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
```

Again, the important thing is that it has the data attribute `data-dismiss` equal to `modal` which makes it function as a modal close button.

> *Note:* The `Save changes` is a button that does nothing. We have not attached a functionality to it. We will do it later on.

## Adding Image on the Modal

As we have said earlier, we can add (almost) any HTML content inside the modal. Let's see the following HTML page:

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modal With Image</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
          
    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/stylesheets/main.css">
    
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"
            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
            crossorigin="anonymous"></script>

    <!-- Bootstrap JavaScript files AFTER jQuery -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

  </head>

  <body>
    <button class="btn btn-lg btn-success" data-toggle="modal" data-target=".modal">Open Modal</button>

    <div class="modal fade" tabindex="-1" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">

            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span></button>
            <h4 class="modal-title">Zakynthos - Shipwreck</h4>

          </div>

          <div class="modal-body text-center">

            <img src="assets/images/zakynthos-shipwreck.jpg" alt="Zakynthos Shipwreck"/>

          </div>
          <div class="modal-footer">

            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>

          </div>
        </div>
      </div>
    </div>

  </body>
</html>
```

Note that this new HTML page refers to a custom CSS file `assets/stylesheets/main.css`, which needs to have the following content:

``` css
img {
    border: 1px solid Darkblue;
}
```

If you save the files, load the page on your browser and click to open the modal, you will see this:

![./images/Modal with Image Inside](./images/modal-with-image-content.jpg)

Note that the image is centered thanks to the class `text-center` that we have added to the `modal-body` `div` of the modal.

## Adding a Youtube Video

Like we did for the image, we can equally add a youtube embedded video reference. Try the following HTML:

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modal With Video</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/stylesheets/main.css">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"
            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
            crossorigin="anonymous"></script>

    <!-- Bootstrap JavaScript files AFTER jQuery -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

  </head>

  <body>
    <button class="btn btn-lg btn-success" data-toggle="modal" data-target=".modal">Open Modal</button>

    <div class="modal fade" tabindex="-1" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">

            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span></button>
            <h4 class="modal-title">Zakynthos - Shipwreck</h4>

          </div>

          <div class="modal-body text-center">

            <iframe width="560" height="315" src="https://www.youtube.com/embed/tqy0Uvw_bFU" frameborder="0" allowfullscreen></iframe>

          </div>
          <div class="modal-footer">

            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>

          </div>
        </div>
      </div>
    </div>

  </body>
</html>
```

If you save the above and load the page on your browser, and then click on the modal button, you will see this:

![./images/Modal With Youtube Embedded Video](./images/modal-with-youtube-embedded-video.jpg)

## Optional Sizes

Twitter Bootstrap offers two optional sizes for your modals

1. Large modals. You need to append the class `modal-lg` next to the `modal-dialog` class.
2. Small modals. You need to append the class `modal-sm` next to the `modal-dialog` class.

The next one is a modal demo for a large size:

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modal With Image</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/stylesheets/main.css">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"
            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
            crossorigin="anonymous"></script>

    <!-- Bootstrap JavaScript files AFTER jQuery -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

  </head>

  <body>
    <button class="btn btn-lg btn-success" data-toggle="modal" data-target=".modal">Open Modal</button>

    <div class="modal fade" tabindex="-1" role="dialog">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">

            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span></button>
            <h4 class="modal-title">Zakynthos from Wikipedia</h4>

          </div>

          <div class="modal-body text-center">

            <iframe src="https://en.wikipedia.org/wiki/Zakynthos" id="frame-in-modal"></iframe>

          </div>
          <div class="modal-footer">

            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

          </div>
        </div>
      </div>
    </div>

  </body>
</html>
```

This page has a CSS file `assets/stylesheets/main.css` with the following content:

``` css
#frame-in-modal {
    width: 100%;
    min-height: 400px;
}
```

This makes the frame displayed as part of the content of the modal is occupying the whole width of the modal and it has a minimum height.

If you save the files of this page and load it on your browser, you will see this:

![./images/Large Modal Demo](./images/large-modal-demo.jpg)

You can see that the width of the modal is quite large because we have used the `.modal-lg` class.

## Remove animation

If you have noticed, when you open the modal it animates from top to bottom. You can remove this animation and make the modal appear at once, by removing
the class `.fade` from the top-level `div` container.

Try that by removing the `.fade` class from the previous example. You will see the modal appearing without top fade in animation.

## Using Twitter Bootstrap Grid System

You can use the Twitter Bootstrap grid system inside the body of the modal. Don't use `.container` or `.container-flow`. Just use the `.row` and
`.column-xx-x` classes appropriately inside the `.modal-body` `div` container.

Let's see an example.

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modal Grid System Demo</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/stylesheets/main.css">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"
            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
            crossorigin="anonymous"></script>

    <!-- Bootstrap JavaScript files AFTER jQuery -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

  </head>

  <body>
    <button class="btn btn-lg btn-success" data-toggle="modal" data-target=".modal">Open Modal</button>

    <div class="modal fade" tabindex="-1" role="dialog">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">

            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span></button>
            <h4 class="modal-title">Greek Islands</h4>

          </div>

          <div class="modal-body text-center">

            <div class="row">
              <div class="col-md-6 text-center">
                <img src="assets/images/ithaki-1.jpg" alt="Ithaki"/>
              </div>
              <div class="col-md-6 text-center">
                <img src="assets/images/elafonisos-2.jpg" alt="Elafonisos"/>
              </div>
            </div>

            <div class="row">
              <div class="col-md-6 text-center">
                <img src="assets/images/karpathos-3.jpg" alt="Karpathos"/>
              </div>
              <div class="col-md-6 text-center">
                <img src="assets/images/chios-4.jpg" alt="Chios"/>
              </div>
            </div>

          </div>
          <div class="modal-footer">

            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

          </div>
        </div>
      </div>
    </div>

  </body>
</html>
```

with the following CSS:

``` css
img {
    padding: 10px 10px;
    width: 100%;
    height: 250px;
}
```

If you save the above and load the page on your browser, when you open the modal you will see this:

![./images/Modal with Grid System Used in Body](./images/modal-with-grid-system-in-body.jpg)

## Modal Activation with JavaScript

We have seen that we can activate a modal without actually using any JavaScript code. The button example that we used was something like this:

``` html
<button class="btn btn-lg btn-success" data-toggle="modal" data-target=".modal">Open Modal</button>
```
with the important bit here being `data-toggle="modal"` and `data-target=".modal"`.

You can also open a modal dialog using JavaScript instead. Let's see the Greek Islands example again, but this time, we will not use a button
like the above. 

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modal Grid System Demo - JavaScript</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/stylesheets/main.css">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"
            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
            crossorigin="anonymous"></script>

    <!-- Bootstrap JavaScript files AFTER jQuery -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <!-- Custom JavaScript -->
    <script src="assets/javascripts/open-dialog.js"></script>

  </head>

  <body>
    <button class="btn btn-lg btn-success" id="open-modal-button">Open Modal</button>

    <div class="modal fade" tabindex="-1" role="dialog">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">

            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span></button>
            <h4 class="modal-title">Greek Islands</h4>

          </div>

          <div class="modal-body text-center">

            <div class="row">
              <div class="col-md-6 text-center">
                <img src="assets/images/ithaki-1.jpg" alt="Ithaki"/>
              </div>
              <div class="col-md-6 text-center">
                <img src="assets/images/elafonisos-2.jpg" alt="Elafonisos"/>
              </div>
            </div>

            <div class="row">
              <div class="col-md-6 text-center">
                <img src="assets/images/karpathos-3.jpg" alt="Karpathos"/>
              </div>
              <div class="col-md-6 text-center">
                <img src="assets/images/chios-4.jpg" alt="Chios"/>
              </div>
            </div>

          </div>
          <div class="modal-footer">

            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

          </div>
        </div>
      </div>
    </div>

  </body>
</html>
```

The above file has 2 differences to the previous version. It references a JavaScript file with custom JavaScript code. The file
is `assets/javascripts/open-dialog.js`. The other one is that the button to open the modal does not have the modal related `data-` attributes
anymore.

Without giving you the `open-dialog.js` content yet, if you save the above, load the page on your browser and try to open the dialog by clicking
on the button, nothing will happen.

In order for the dialog to open, we now need to provide the corresponding JavaScript commands.

``` javascript
$(document).ready(function() {
   $('#open-modal-button').on('click', function() {
      $('.modal').modal();
      return false;
   });
});
```

If you save the above inside the `assets/javascripts/open-dialog.js` file, and reload the page, then modal dialog will be open when you click the
`Open Modal` button.

The new stuff here is this:

``` javascript
$('.modal').modal();
```

It is inside the implementation of the click handler for the button `#open-modal-button`. So, when we click this button, we call the `.modal()` method
of the Twitter Bootstrap JavaScript library. This is called on the selection of elements that match the `$('.modal');`, hence on the modal `div` container.

## Modal and Options

When calling `$(...).modal()` method, then you can give a JavaScript object with options for the modal function. The options that you can give are
the following:

1) `backdrop`: Boolean with default value `true`. It can also be a string with the value `static`. If you set the value to `false`, then opening the
modal will open it without a backdrop and you will not be able to click outside of the modal in order to close that.

![./images/Modal Without Backdrop](./images/modal-without-backdrop.jpg)

The code to open the modal without backdrop is this:

``` javascript
$(document).ready(function() {
   $('#open-modal-button').on('click', function() {
      $('.modal').modal({
          backdrop: false
      });
      return false;
   });
});
```

If you set the `backdrop` value to `static` then it will open the modal with a backdrop but you will not be able to close the modal by clicking
outside of the modal area.

If you set the `backdrop` to `true`, then it will open the modal with a backdrop and you will be able to close the modal by clicking outside the modal area.

2) `keyboard`: Boolean with default value `true`. When `true` it closes the modal if you click on the key <kbd>ESC</kbd>.

3) `show`: Boolean with default value `true`. Shows the modal when initialized. This is useful because you might want to initialize a modal
without actually showing that until later. Change the JavaScript code inside the `assets/javascripts/open-dialog.js` as follows:

``` javascript
$(document).ready(function() {
    $('.modal').modal({
        backdrop: 'static',
        keyboard: false,
        show: false
    });

    $('#open-modal-button').on('click', function() {
        $('.modal').modal('show');
        return false;
   });
});
```

This is not much different to the original version. But it is better because it splits the functionality in two. First it initializes the
modal and then, when the button is clicked it just shows it.

> *Note:* The initialization of a modal with `.modal({....});` and the show of an already initialized modal with 
the call `.modal('show');` fall into the category of modal methods. Let's see some more details about them.

## Modal Methods

Here is the list of modal methods:

1. `.modal('show');`

``` javascript
$('modal-selector').modal('show');
```

It is used to show an initialized modal.

2. `.modal('hide');`

``` javascript
$('modal-selector').modal('hide');
```

It is used to hide an initialized modal.

3. `.modal('toggle');`

``` javascript
$('modal-selector').modal('toggle');
```

It is used to hide an open modal or show a hidden modal.

## Modal Events

We have already learned that JavaScript programming involves a lot of event programming. Lots of JavaScript plugins out there define their custom
events. Same goes for Twitter Bootstrap modal.

The following are the events that are fired against the modal itself.

1) `show.bs.modal`. This event fires immediately when the `show` method is called. If caused by a click, the clicked element 
is available as the `relatedTarget` property of the event.

Let's do an example.

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modal relatedTarget Example</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"
            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
            crossorigin="anonymous"></script>

    <!-- Bootstrap JavaScript files AFTER jQuery -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <!-- Custom JavaScript -->
    <script src="assets/javascripts/related-target.js"></script>

  </head>

  <body>
    <button class="btn btn-lg btn-success" data-toggle="modal" data-target=".modal">Open Modal 1</button>
    <button class="btn btn-lg btn-success" data-toggle="modal" data-target=".modal">Open Modal 2</button>
    <button class="btn btn-lg btn-success" data-toggle="modal" data-target=".modal">Open Modal 3</button>

    <div class="modal fade" tabindex="-1" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">

            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span></button>
            <h4 class="modal-title">Modal Demo of relatedTarget</h4>

          </div>

          <div class="modal-body text-center">


          </div>
          <div class="modal-footer">

            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

          </div>
        </div>
      </div>
    </div>

  </body>
</html>
```

The above HTML page is using the JavaScript file `assets/javascripts/related-target.js`. As you can see from the HTML markup, the `.modal-body` of the
modal dialog is empty. We are going to add content dynamically, using JavaScript, reacting to the `show.bs.modal` event. Also, the content that
we will add, will be related to the button that has triggered the opening of the modal. As you can see there are three buttons that they all open
the modal dialog.

This is going to be the final result:

<div id="media-title-video-modal-demo-of-relatedTarget.mp4">Demonstrating show.bs.modal event and relatedTarget</div>
<a href="https://player.vimeo.com/video/194358185"></a>          

The JavaScript file is very simple:

``` javascript
$(document).ready(function(){
    $('.modal').on('show.bs.modal', function(event){
       var $buttonClicked = $(event.relatedTarget);

       $(this).find('.modal-body').html("<h1>" + $buttonClicked.html() + " Clicked!</h1>");
    });
});
```

We attach a handler on the `show.bs.modal` event for the modal (`.modal`) target. We also declare the argument `event` which will be
holding the `relatedTarget` when the handler is called. We save the `relatedTarget` to `$buttonClicked` and then we
just use the [.html()](https://api.jquery.com/html/) jQuery function to set the HTML content of the `.modal-body` `div`. The `.modal-body` `div` is selected using
the jQuery method [.find()](https://api.jquery.com/find/).

2) `shown.bs.modal`. This event is fired when the modal has been made visible to the user and after all the `fade` transitions have been
completed. If caused by a click, the clicked element is available as the `relatedTarget` property of the event.

3) `hide.bs.modal`. This event is fired immediately when the `hide` instance method has been called. This might be useful when you 
want to program some actions that might need to be executed when the modal is being hidden.

4) `hidden.bs.modal`. This event is fired when the modal has finished being hidden from the user (will wait for CSS transitions to complete).







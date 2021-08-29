## Tooltips

Tooltips is a very nice way to display helpful text when user hovers over a highlighted text. So, it is used to give some
extra useful information, like a tip or a hint.

Here is an example of a page that uses tooltips.

![./images/Example Page with Tooltips on Specific Words](./images/example-page-with-tooltips-with-pointers-to-words-with-tooltip.jpg)

If you mouse over the words that are underlined with a dotted line, then you will see the tooltips. For example:

![./images/Tooltip Activated](./images/example-page-tooltip-activated.jpg)

## Implementation with Twitter Bootstrap

Let's see how we can implement the above example. Here is the HTML page:

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tooltip Page Example</title>

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

    <!-- Custom JavaScript code -->
    <script src="assets/javascripts/main.js"></script>

  </head>
  <body>

    <div class="container">
      <h1>Drones</h1>

      <h2>HK 251 Whirlwind Brushless Quadcopter Review</h2>

      <p>
        The XK 251 is a RTF mid-sized (250 mm diagonal) quadcopter
        featuring brushless motors and carbon fiber arms and landing gear.
        Brushless motors are more efficient and more powerful than the brushed variety typically found on toy-grade models.
        They also have a much longer life span.

        Here is an <a href="http://droneflyers.com/talk/threads/is-a-brushless-motor-better-than-a-brushed-motor.754/">
        FAQ relating to the difference between brushed and brushless motors.</a>

        The XK 251 weighs in at 215 grams meaning that no FAA registration is needed. It is powered by a small 2s (7.4v) battery.
      </p>

      <div class="text-center">
          <img src="assets/images/drone-image.jpg" alt="Drone Image" id="drone-image"/>
      </div>
    </div>

  </body>
</html>
```

If you save the above and load the page on your browser, you will see the page displayed correctly, but the tooltips will not be functional. If you mouse over the
words `RTF` and `quadcopter`, you will not see the tooltips bubble up.

In order to make a word have a tooltip, you need to do the following:

1. Wrap the word into a `span` element. Hence, word will not change its position with regards to the rest of the text.
2. Add the data attribute `data-toggle="tooltip"`. This will tell Bootstrap that the content of the span will be decorated with a tooltip on mouse over.
3. Add the data attribute `data-placement="top"`. This will tell Bootstrap that the tooltip needs to appear on top of the span content. Note that `data-placement` can
take the values `left`, `top`, `right`, `bottom`. Choose any value that it best suits at your case.
4. Add the attribute `title` having as value the text that you would like it to appear on mouse over.
5. Activate the tooltips using JavaScript. This is necessary, because, Bootstrap, has tooltips not enabled (for performance reasons).

Let's take the above steps for the words `RTF` and `quadcopter` on our HTML page. Wrap `RTF` word as follows:

``` html
<span data-toggle="tooltip" data-placement="top" title="Ready to Fly">RTF</span>
```

and wrap `quadcopter` as follows:

``` html
<span data-toggle="tooltip" data-placement="top"
              title="An aerial vehicle using 4 rotors, commonly using only the varying speed of the motors to achieve both stability and direction of flight.">quadcopter</span>
```

Next, update the `assets/javascripts/main.js` file as follows:

``` javascript
$(document).ready(function() {
    $('[data-toggle=tooltip]').tooltip();
});
```

That above, is the opt-in part of the implementation, which enables tooltips for all the elements that have the data attribute `data-toggle="tooltip"`.

If you save all the above and reload the page on your browser, everything will be ready. When you mouse over the words `RTF` and `quadcopter` you will see the 
tooltips.

<div id="media-title-video-tooltips-demo.mp4">Tooltips Are Displayed On MouseOver</div>
<a href="https://player.vimeo.com/video/194369501"></a>

As you can see, the tooltips are displayed on mouse over. Perfect.

There is a small improvement that we have to introduce. We need to find a way to tell the user that if he mouses over a particular word a tooltip will appear
with further explanation information. If we don't do that, then the user does not know that there is a tooltip hidden behind the word.

In order to achieve that we usually want the word with the tooltip behind to be underlined with a dotted line. Twitter Bootstrap makes our styling work here
easy. Instead of wrapping the text with the tooltip inside a `span`, we can wrap it inside an `abbr` element.

Go ahead and change the `span`s to `abbr` elements:

for RTF:

``` html
<abbr data-toggle="tooltip" data-placement="top" title="Ready to Fly">RTF</abbr>
```

and for `quadcopter`:

``` html
<abbr data-toggle="tooltip" data-placement="top"
              title="An aerial vehicle using 4 rotors, commonly using only the varying speed of the motors to achieve both stability and direction of flight.">quadcopter</abbr>
```

When you save these changes and reload the page on your browser, you will see the words `RTF` and `quadcopter` underlined with a dotted line.

Perfect!

## Tooltip Options

Tooltip has a lot of different options that can be used for its customization. Let's see the most important ones:

1) `animation`: Has default value `true`. It applies a CSS fade transition when displaying the tooltip.

2) `delay`: This can be either a number or a JavaScript object. If it is a number, then it defines the delay, in milliseconds, to show or hide the tooltip.
If it is an object, then it can have the `show` and `hide` properties with integer values representing the delay to show or hide respectively.

Let's try that. We will set the delay property and see how the tooltip behaves. On the previous page, go ahead and change the `assets/javascripts/main.js`
file so that it is:

``` javascript
$(document).ready(function() {
    $('[data-toggle=tooltip]').tooltip({
        delay: {
            show: 3000, // 3 seconds
            hide: 1000  // 1 second
        }
    });
});
```
If you save the above and reload the page on your browser, you will see the tooltip appear 3 seconds after you mouse over the word with tooltip. You will
also see that it disappears after 1 second from the moment you moved your mouse out of the word with tooltip. Like this:

<div id="media-title-video-tooltip-delay-option-demo.mp4">Tooltips - Delay Demo</div>
<a href="https://player.vimeo.com/video/194369002"></a>          

3) `html`: This is a boolean option that takes values `true` or `false`. Its default value is `false`. With `false`, the value of the `title` attribute of the
tooltip element is inserted using the [.text()](http://api.jquery.com/text/) method. Which means that even if `title` contains HTML markup, this will not actually
be used, it will be treated as plain text. On the other hand, if the `html` option is set to `true`, when you have a value on `title` that includes HTML markup, this
will be inserted in the tooltip area using the [.html()](http://api.jquery.com/html/) method, and, hence, the HTML markup will be respected. Let's see an example.

First, add some HTML markup to the title of the `quadcopter` word.

``` html
<abbr data-toggle="tooltip" data-placement="top"
      title="An aerial vehicle using <b>4 rotors</b>, commonly using only the varying speed of the motors to achieve both stability and direction of flight.">quadcopter</abbr>
```

We have added `<b>4 rotors</b>` HTML markup inside the title.

Now, make sure that the `assets/javascripts/main.js` file is as follows:

``` javascript
$(document).ready(function() {
    $('[data-toggle=tooltip]').tooltip({
        html: false // default value
    });
});
```

(although it's not necessary when `html` has the value `false`).

Save and load the page on your browser. When you mouse over the `quadcopter` word, you will see the tooltip, but the `<b>4 rotors</b>` part will be printed
verbatim, treat as plain text.

![./images/Tooltip HTML Markup Treated as Plain Text](./images/tooltip-html-false-value-treat-html-as-plain-text.jpg)

If we want the HTML markup of the `title` attribute to be treated as HTML and rendered as such, we need to set the value of the option `html` to `true`:

``` javascript
$(document).ready(function() {
    $('[data-toggle=tooltip]').tooltip({
        html: true 
    });
});
```

Save the above inside `assets/javascripts/main.js` and reload the page on your browser. You will see this when you mouse over the word `quadcopter`.

![./images/Tooltip HTML Markup Treated As HTML](./images/tooltip-html-true-value-treat-html-as-html.jpg)

As you can see, the HTML content of the `title` attribute is being displayed as HTML fragment without problem. 

## Popovers

Popovers are like tooltips but allow richer and more eye-catching layout and style. Also, the target element needs to be clicked in order 
for the popover to appear and disappear. Here is an example of a popover:

![./images/Popover Example](./images/page-with-a-popover.jpg)

Let's change the previous page that had tooltips on `RTF` and `quadcopter` words. We are going to put popovers.

The HTML page should be like that:

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Popover Page Example</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/stylesheets/main-with-popovers.css">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"
            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
            crossorigin="anonymous"></script>

    <!-- Bootstrap JavaScript files AFTER jQuery -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <!-- Custom JavaScript code -->
    <script src="assets/javascripts/main-with-popovers.js"></script>

  </head>
  <body>

    <div class="container">
      <h1>Drones</h1>

      <h2>HK 251 Whirlwind Brushless Quadcopter Review</h2>

      <p>
        The XK 251 is a RTF <span
                               class="glyphicon glyphicon-question-sign"
                               data-toggle="popover"
                               data-placement="top"
                               title="Ready to Fly"
                               data-content="Ready to Fly drones are drones with the key at hand. You can start flying them immediately."
                               ></span>
        mid-sized (250 mm diagonal)
        quadcopter
        <span
           class="glyphicon glyphicon-question-sign"
           data-toggle="popover" data-placement="top"
           title="Quadcopter"
           data-content="An aerial vehicle using <b>4 rotors</b>, commonly using only the varying speed of the motors to achieve both stability and direction of flight."
           ></span>
        featuring brushless motors and carbon fiber arms and landing gear.
        Brushless motors are more efficient and more powerful than the brushed variety typically found on toy-grade models.
        They also have a much longer life span.

        Here is an <a href="http://droneflyers.com/talk/threads/is-a-brushless-motor-better-than-a-brushed-motor.754/">
        FAQ relating to the difference between brushed and brushless motors.</a>

        The XK 251 weighs in at 215 grams meaning that no FAA registration is needed. It is powered by a small 2s (7.4v) battery.
      </p>

      <div class="text-center">
          <img src="assets/images/drone-image.jpg" alt="Drone Image" id="drone-image"/>
      </div>
    </div>

  </body>
</html>
```

Watch out because this one has two new custom CSS and JavaScript files: `assets/stylesheets/main-with-popovers.css` and `assets/javascripts/main-with-popovers.js`.

CSS is as follows:

``` css
#drone-image {
    width: 100%;
    max-width: 400px;
}

body {
    margin-top: 50px;
}
```

and JavaScript is as follows:

``` javascript
$(document).ready(function() {
    $('[data-toggle=popover]').popover({
        html: true
    });
});
```

Here are the differences and similarities of the HTML page with popovers VS the HTML page with tooltips.

1. For popovers, we use the following data attributes:
    1. `data-toggle="popover"`. For tooltips we use `data-toggle="tooltip"`
    1. `data-placement` attribute is used for both to specify the placement of the element.
    1. `title` attribute is used to specify the content of the toolip. For popover, is used to specify the heading of the popover.
    1. `data-content` is used only on popovers and specifies the content of the body of the popover.

![./images/Header and Body of Popover](./images/page-with-a-popover-header-body.jpg)

If you save the above files and load the page on your browser, you will be able to click on the question mark icon in order to see
the popover.

<div id="media-title-video-popovers-in-action.mp4">Popovers in Action</div>
<a href="https://player.vimeo.com/video/194358659"></a>          
          
As you can experience, the way we have integrated popovers has the problem that the popover can close only if user clicks on the same hot spot it is used
to show the popover.

How can we allow the user to click anywhere for the popover to close? In order to achieve that, you need to change a little bit the way popovers are integrated.

1. You need to use the data attribute `data-trigger="focus"`.
1. You need to add the attribute `tabindex="0"` for the first popover, `tabindex="1"` for the second and so on.

Let's do these updates on our popovers.

For the `RTF` word:

``` html
RTF <span
       tabindex="0"
       class="glyphicon glyphicon-question-sign"
       data-toggle="popover"
       data-placement="top"
       title="Ready to Fly"
       data-content="Ready to Fly drones are drones with the key at hand. You can start flying them immediately."
       data-trigger="focus"
       ></span>
```

For the `quadcopter` word:

``` html
quadcopter
<span
   tabindex="1"
   class="glyphicon glyphicon-question-sign"
   data-toggle="popover" data-placement="top"
   title="Quadcopter"
   data-content="An aerial vehicle using <b>4 rotors</b>, commonly using only the varying speed of the motors to achieve both stability and direction of flight."
   data-trigger="focus"
   ></span>
```

If you do these changes and you reload the page, then you will be able to close the popover by clicking anywhere on the page:

<div id="media-title-video-popovers-that-can-be-closed-clicking-anywhere-on-the-page.mp4">Popovers That Can Be Closed By Clicking Anywhere On The Page</div>
<a href="https://player.vimeo.com/video/194359152"></a>          

### Options

Like tooltips, popovers have various options. Some of the most useful ones are the following:

1) `animation`: Takes boolean values, `true` or `false`. The default value is `true`. It applies CSS fade transition to the popover.

2) `delay`: This is either a number or an object. Works exactly like the `delay` option for the tooltips.

3) `html`: Boolean with default value `false`. If `true` it allows the content to be parsed as HTML rather than plain text.


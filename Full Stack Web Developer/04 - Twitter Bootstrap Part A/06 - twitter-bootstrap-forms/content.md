Twitter Bootstrap offers a series of classes that affect how forms and form controls are styled. In this chapter,
we will design a Twitter Bootstrap Forms Reference page, in which we will layout all the major facilities Twitter Bootstrap
offers to us with regards to this subject.

Let's start.

### Empty Twitter Bootstrap Page

We will start with the standard empty Twitter Bootstrap Page.

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Twitter Bootstrap Form Reference Page</title>

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
    <div id="main-container" class="container">
      <!-- Content will be inserted here -->
      
    </div>  
  </body>
</html>
```

Save the above HTML content on an `index.html` file. Also, prepare an empty `stylesheets/main.css` file that will store our CSS rules. If you save those files and load the page 
on your browser, you will not see anything, because the body does not contain any content.

We intend to add the whole content of our page inside a `container` div. That's why you can see inside `body` the `div` with class `container`. 

### Basic Form

We will start with the basic Twitter Bootstrap form. Add the following content inside the `main-container` element:

``` html
<div class="row">
    <div class="col-md-6">    
      <h3>Sign In</h3>
      <p>Sign in today for more experience.</p>
    
      <form>
        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" id="email" placeholder="Enter email" class="form-control">
        </div>
    
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" id="password" placeholder="Password" class="form-control">
        </div>
    
        <div class="pull-right">
          <button class="btn btn-sm btn-primary" type="submit">
            <strong>Log in</strong>
          </button>
        </div>
    
        <div class="pull-left checkbox">
          <label>
            <input type="checkbox">Remember Me
          </label>
        </div>
    
      </form>
    </div> <!-- left column -->

    <div class="col-md-6">

    </div> <!-- right column -->

</div> <!-- row inside main container -->
```

As you can read above, we are going to create, initially, a 2 column layout. The right column is empty, for the time being. The left column,
contains a header `h3` and a small paragraph `p`. But the important stuff here is the `form` element.

This is a simple `form` element without any class attached to it. This is the basic form style that Twitter Bootstrap offers.

Things to point out here are the following:

1. Labels and inputs are grouped together in `div`. Each `div` has the class `form-group`.
2. Each input control has the class `form-control`.
3. The class `pull-right` is a very quick way to actually apply `float: right;`. 
4. The class `pull-left` is the opposite to `pull-right`.
5. The class `checkbox` is used on a `div` that includes a checkbox.

Otherwise, anything else on the above code is pretty straightforward and does not use anything new.

If you save the above and load the page on your browser, you will see this:

![./images/Sign In Form](./images/sign-in-form.jpg)

As you can see, with little more HTML on a standard form, we are getting a lot of things. See how input is highlighted when it gets the focus. See how the button is changing 
background color when the mouse moves over it. Look how easy it was to move things left and right with `pull-left` and `pull-right` classes.

<div id="media-title-video-sign-in-form-in-action.mp4">./images/Sign In Form In Action</div>
<a href="https://player.vimeo.com/video/194259224"></a>

### Horizontal Forms

The previous form had one row for the label and a separate row, below the label, for the input control. We have the alternative here to implement a horizontal form. This form
has the label and the input control on the same row, occupying adjacent columns.

Add the following content inside the right column `div`:

``` html
<h3>Sign In</h3>
<p>Sign in today for more experience.</p>

<form class="form-horizontal">
    <div class="form-group">
      <label class="col-lg-2 control-label" for="email2">Email</label>
      <div class="col-lg-10">
        <input type="email" placeholder="Email" class="form-control" id="email2">
        <span class="help-block">Example block-level help text here.</span>
      </div>
    </div>
    
    <div class="form-group">
      <label class="col-lg-2 control-label" for="password2">Password</label>
      <div class="col-lg-10">
        <input type="password" placeholder="Password" class="form-control" id="password2">
      </div>
    </div>
    
    <div class="form-group">
      <div class="col-lg-offset-2 col-lg-10">
        <div class="checkbox">
          <label>
            <input type="checkbox">Remember Me
          </label>
        </div>
      </div>
    </div>
    
    <div class="form-group">
      <div class="col-lg-offset-2 col-lg-10">
        <button class="btn btn-sm btn-white" type="submit">Sign in</button>
      </div>
    </div>
</form>
```
If you save the above and load the page on your browser, you will see this:

![./images/Horizontal Form On The Right Column](./images/horizontal-form-on-the-right-column.jpg)

As you can see above, the horizontal form divides each row into two columns, one for the label and one for the input control itself. Here are the things that you need to be
aware of from the code:

1. The horizontal form has class `form-horizontal` attached to the `form` element.
2. You enclose the label and the input controls inside a `div` with class `form-group`. This works like a `row` so that you can divide it in columns using the grid classes.
3. Let the `label` occupy the left column by specifying the correct grid class directly on it. Also, make sure that it has the class `control-label`. The `control-label`
class will make sure that the label text is padded and aligned correctly.
4. Wrap your input control into a `div` which has the correct grid column class.

On our example above, the labels occupy 2 of the 12 columns width. Whereas, the corresponding input controls occupy the rest of the column (10 out of 12).

![./images/Horizontal Form Columns - 2 and 10 width columns](./images/horizontal-form-columns.jpg)

Look also, how we use the `col-lg-offset-2` class to push right the controls that do not have the label part.

![./images/Horizontal Form - Offsets Push Controls To The Right](./images/horizontal-form-offsets.jpg)

### `clearfix`

There is a problem with the current layout of our page. It appears when we shrink the browser window to be less than 992px wide. When we do that, the second form content overlaps with the
content of the first form. Why does this happen? We have separated the content for the two columns using standard Twitter Bootstrap grid classes. There shouldn't be any problem. However, there is one.

![./images/How Second Form Overlaps On First](./images/problem-with-second-sign-in-form-overlapping-with-first.jpg)

This problem has been caused by the `pull-right` and `pull-left` classes that have been used on the first form. These classes, as we have already said,
affect the `float` property accordingly.

In order to get rid of the side effects, we need to introduce an empty `div`, after the two `pull-*` divs and before the closing `</form>` tag. This new `div` 
should have class equal to `clearfix`, which essentially resets the `float` property.

Add the following before the closing `</form>` tag of the first form:

```
<div class="clearfix"></div>
```

Save and reload the page on your browser. You should see something like this:

![./images/Both Forms Are Now Displayed Correctly On Small Devices](./images/two-forms-displayed-one-on-top-of-the-other.jpg)

### Inline Form

There are cases in which we only have 1 row to display all the input controls of a form. Here is an example of such a form:
 
![./images/Inline Forms Example](./images/inline-form-example.jpg)
 
We need to use the Twitter Bootstrap inline forms. Let's add the following HTML code, exactly before the closing `</div>` of the main container:

``` html
<div id="inline-form-container">
    <form class="form-inline">
      <div class="form-group">
        <label for="email3">Email address</label>
        <input type="email" placeholder="Enter email" id="email3" class="form-control">
      </div>
    
      <div class="form-group">
        <label for="password3">Password</label>
        <input type="password" placeholder="Password" id="password3" class="form-control">
      </div>
    
      <div class="checkbox">
        <input type="checkbox" id="checkbox1">
        <label for="checkbox1">
          Remember me
        </label>
      </div>
    
      <button class="btn btn-white" type="submit">Sign in</button>
    </form>
</div>
```

Also, make a small amendment on the CSS file:

``` css
#inline-form-container {
    border-top: 1px solid #eee;
    padding-top: 20px;
}
```

If you save the above and reload the page on your browser, you will see this:

![./images/Twitter Bootstrap Inline Form](./images/inline-form.jpg)

The things that you need to be aware of from the HTML of the inline form are the following:

(1) The `form` tag needs to have the `form-inline` class

![./images/Inline Form class](./images/inline-form-html-code-class-form-inline.jpg)

(2) `label` and corresponding `input` control should be grouped together inside a `form-group` `div`. However, the `checkbox` needs to be a `checkbox` `div` instead.
![./images/Grouping Label And Input Controls](./images/inline-form-html-code-form-groups.jpg)

(3) The input controls that accept text input need to have class `form-control`.
![./images/Text Input Controls With class form-control](./images/inline-form-html-code-form-controls.jpg)

That's it. Inline forms are useful, when you want to make sure that your form does not occupy too much vertical space.

### Help Text

There are many times that an input control requires the user to enter a piece of information that is not very common. The UI needs to make sure that the
user understands what he has to key in. The label helps. The placeholder helps too. But, there are times that an extra hand of help is needed, in order 
to offer a more detailed explanation. In that case, we might want to use the tool that is called `Help Text`.
 
The help text, usually, appears below the input control and it is a phrase explaining to the user what he has to key in.

Let's add the following piece of HTML code as the last elements inside the main container div:

``` html
<div class="page-header">
    <h3>Other Form Elements</h3>
</div>

<form class="form-horizontal">

    <div class="page-header">
      <em>Help Text</em>
    </div>
    
    <div class="form-group">
      <label for="help-text" class="col-sm-2 control-label">VAT number</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="help-text" placeholder="Key in your VAT number"/>
        <span class="help-block">Give your company VAT number. Enter the VIES VAT number with the two char prefix indicating your country.</span>
      </div>
    </div>

</form>
```

What we are doing here is the following. 

1. We are just adding a page header with title `Other Form Elements`. 
2. We are introducing a new form on our page. This will be a horizontal form and will be used to enclose a series of form elements that we would like to talk you about.
3. We start with the `Help Text`. This is implemented with a simple `span` element that has the class `help-block`. It is positioned exactly after the input control
that it accompanies. Other than that, there is nothing special to the above piece of code.
![./images/Help Text as a Span](./images/help-text-highlighted.jpg)

If you save the above and load the page on your browser, you will see this:

![./images/Page With Help Text](./images/page-with-help-text.jpg)

Nice. Let's proceed with more form elements.
 
### Static Control
 
The static control is used to represent a readonly piece of information, next to a label. It is used in place of the readonly input controls. Let's add the following HTML fragment as part of our last form:
 
``` html
<div class="page-header">
  <em>Static Control</em>
</div>

<div class="form-group">
  <label class="col-sm-2 control-label">Email:</label>
  <div class="col-sm-10">
    <p class="form-control-static">foo@bar.com</p>
  </div>
</div>
```

If you save the above and load the page on your browser, you will see this:

![./images/Page With Static Control](./images/page-with-static-control.jpg)

As you can see above, the static control is displayed as simple text. It is implemented as a block level element with class `form-control-static`:
![./images/Static Control HTML Code](./images/static-control-class-highlighted.jpg)

### Select Boxes

There is nothing special with select boxes and Twitter Bootstrap. The only thing that you have to do is to attach the class `form-control` to the `select` element. Let's add the following HTML code as part of our last form.

``` html
<div class="page-header">
  <em>Select Boxes</em>
</div>

<div class="form-group">

  <label class="col-sm-2 control-label">Select</label>

  <div class="col-sm-10">
    <select class="form-control" name="account">
      <option>option 1</option>
      <option>option 2</option>
      <option>option 3</option>
      <option>option 4</option>
    </select>
  </div>

  <div class="col-sm-10 col-sm-offset-2">
    <div class="page-header">
      <em>Multiple</em>
    </div>

    <select class="form-control" multiple="multiple">
      <option>option 1</option>
      <option>option 2</option>
      <option>option 3</option>
      <option>option 4</option>
    </select>
  </div>
</div>
```

That's pretty straightforward. There is nothing new here except from the fact that the `select` elements have the class `form-control` attached. If you save the page and reload it on your browser,
you will see this:

![./images/Page With Select Boxes](./images/page-with-select-boxes.jpg)

The class `form-control` styles the select boxes, similarly to the styling that other input controls get with this class. 

### Input With Contextual Color

There are many times that one wants to highlight the input controls that have been given erroneous input by the user. Or may want to highlight the ones that had correct input. One way to do that is by
colouring the input controls accordingly. For example, the erroneous inputs with red color. 

Twitter Bootstrap offers some classes that are specially designed to deal with this. The classes are

1. `has-success`
2. `has-warning`
3. `has-error`

and they need to be attributed to the form group `div`. Let's add the following HTML code at the end of the form we are working on.

``` html
<div class="page-header">
  <em>Contextual Colouring</em>
</div>

<div class="form-group has-success">
  <label class="col-sm-2 control-label">Input with success</label>
  <div class="col-sm-10">
    <input type="text" class="form-control"/>
  </div>
</div>

<div class="form-group has-warning">
  <label class="col-sm-2 control-label">Input with warning</label>
  <div class="col-sm-10">
    <input type="text" class="form-control">
  </div>
</div>

<div class="form-group has-error">
  <label class="col-sm-2 control-label">Input with error</label>
  <div class="col-sm-10">
    <input type="text" class="form-control">
  </div>
</div>
```

If you save the above and load the page on your browser, you will see this:
![./images/Page With Contextual Colouring](./images/page-with-contextual-colouring.jpg)

The only thing that we did, was to add the correct class values on the form group div:

![./images/./images/Page With Contextual Colouring - HTML Code](./images/page-with-contextual-colouring-html-code.jpg)

### Size Of Input Controls

Twitter Bootstrap offers some very handy classes that relate to the size of input controls. You can use large controls, with the class `input-lg` attached to the input control. Or you can use small
controls, with the classs `input-sm` attached instead. Let's add the following piece of HTML code at the end of our form:

``` html        
<div class="page-header">
  <em>Size of Input Controls</em>
</div>

<div class="form-group">
  <label class="col-sm-2 control-label">Large</label>

  <div class="col-sm-10">
    <input type="text" class="form-control input-lg"/>
  </div>
</div>

<div class="form-group">
  <label class="col-sm-2 control-label">Default</label>

  <div class="col-sm-10">
    <input type="text" class="form-control"/>
  </div>
</div>

<div class="form-group">
  <label class="col-sm-2 control-label">Small</label>

  <div class="col-sm-10">
    <input type="text" class="form-control input-sm"/>
  </div>
</div>
```
If you save the above and reload the page on your browser, you will see this:

![./images/Page With Input Controls Of Different Sizes](./images/page-with-different-sized-input-controls.jpg)

The differences in sizes become more obvious if you try to add some input too.
![./images/Input Controls With Different Sizes - With Input Inside](./images/different-size-input-controls.jpg)

The only piece of code that does this trick is the one with the classes `input-lg` and `input-sm`:

![./images/Classes For Input Control Sizes Highlighted](./images/classes-for-size-of-input-controls.jpg)

### ./images/Input Groups

Sometimes you want to create the following effect:

![./images/Input Group - Username](./images/input-group-username.jpg)

or something like this:

![./images/Input Group - Decimals](./images/input-group-decimals.jpg)

or even something like this:

![./images/Input Group - Dollars](./images/input-group-dollars.jpg)

What we have here is a combination of a small label alongside with a text input control.
![./images/Label And Input Control Grouped Together](./images/input-group-username-highlighted.jpg)

The fact that we combine these two (and on the third example three) controls into one, it is called input grouping.

Let's add the following code in our form:

``` html 
<div class="page-header">
  <em>./images/Input Groups</em>
</div>


<div class="col-sm-10 col-sm-offset-2">

  <div class="input-group">
    <span class="input-group-addon">@</span>
    <input type="text" placeholder="Username" class="form-control"/>
  </div>

  <div class="input-group">
    <input type="text" class="form-control"/>
    <span class="input-group-addon">.00</span>
  </div>

  <div class="input-group">
    <span class="input-group-addon">$</span>
    <input type="text" class="form-control">
    <span class="input-group-addon">.00</span>
  </div>

  <div class="input-group">
    <span class="input-group-addon">
      <input type="checkbox">
    </span>
    <input type="text" class="form-control">
  </div>

  <div class="input-group">
    <span class="input-group-addon">
      <input type="radio">
    </span>
    <input type="text" class="form-control">
  </div>

</div>
```
If you save the above and reload the page on your browser, you will see this:

![./images/Input Groups](./images/input-groups.jpg)

Before we improve the layout a little bit (now, there is no free space between the input controls, and we see the stack one on top of the other), let's see what does make the input group in our HTML
code:

1. Input groups are created by combining a `span` with class `input-group-addon` with an `input` control
![./images/./images/Input Groups - Span classes](./images/input-groups-html-code-highlighted.jpg)
2. As you can see, you can group together almost anything that you like. Here, we have grouped together a special symbol and an input box:
![./images/Grouping Symbol And Input Box](./images/input-groups-html-code-symbol-and-input-box.jpg)
which is displayed as:
![./images/Group Symbol And Input Box - UI](./images/group-symbol-and-input-box.jpg)
Whereas here:
![./images/Grouping Two Input Controls](./images/grouping-two-input-boxes.jpg)
we have grouped two input controls, and the result is:
![./images/./images/Grouping Two Input Controls - UI](./images/grouping-two-input-boxes-ui.jpg)

Now, the problem on our page is that our input groups are very tight, stacked one on top of the other. What we can do to give some breathing air, is that we can use the
technique that we use for every form that has grouping of controls. It is the `div` with class `form-group`. We only have to add the class `form-group` next to the 
existing `input-group` class, on the grouping `div`.

``` html       
<div class="page-header">
  <em>./images/Input Groups</em>
</div>

<div class="col-sm-10 col-sm-offset-2">

  <div class="input-group form-group">
    <span class="input-group-addon">@</span>
    <input type="text" placeholder="Username" class="form-control"/>
  </div>

  <div class="input-group form-group">
    <input type="text" class="form-control"/>
    <span class="input-group-addon">.00</span>
  </div>

  <div class="input-group form-group">
    <span class="input-group-addon">$</span>
    <input type="text" class="form-control">
    <span class="input-group-addon">.00</span>
  </div>

  <div class="input-group form-group">
    <span class="input-group-addon">
      <input type="checkbox">
    </span>
    <input type="text" class="form-control">
  </div>

  <div class="input-group form-group">
    <span class="input-group-addon">
      <input type="radio">
    </span>
    <input type="text" class="form-control">
  </div>

</div>
```

If you save the above update and reload the page on your browser, you will see this:
![./images/./images/Input Groups Nicely Styled With Enough Space on Their Bottom Edge](./images/input-groups-with-form-group-class-attached.jpg)

Another variation of the above grouping, is the grouping of an input control with a button. Add the following HTML code at the end of our form:

``` html
<div class="page-header">
  <em>Input &amp; Button Groups</em>
</div>

<div class="col-sm-10 col-sm-offset-2">
  <div class="input-group form-group">
    <input type="text" class="form-control"/>
    <span class="input-group-btn">
      <button type="button" class="btn btn-primary">Go!</button>
    </span>
  </div>
</div>
```

If you save the above and you reload the page on your browser, you will see this:
![./images/Input And Button Group Example](./images/input-and-button-groups.jpg)

As you can see above, this is quite similar to the previous input groups that we saw, except from the fact that the `span` contains a `button`, case in which
the `span` needs to have the class `input-group-btn` instead of `input-group-addon`.

![./images/Grouping Input Control With Button Requires input-group-btn](./images/input-group-btn-highlight.jpg)

### Closing

This ends our encounter with forms. On second part of Twitter Bootstrap, we will learn about advanced JavaScript plugins that can be combined with
Twitter Bootstrap form components, and offer richer user experience.

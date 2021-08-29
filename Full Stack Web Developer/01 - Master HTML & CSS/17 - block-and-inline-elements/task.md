1. Answer the following questions and send them to your mentor:
    1. What is the display property of `body`?
    2. What is the display property of a `<p>`?
    3. What is the display property of an `<h1>`?
    4. What is the display property of a `<span>`?
    5. What is the display property of a `<ul>`?
    6. What is the display property of an `<li>`?
    7. What is the display property of a `<table>`?
    8. Can we specify the `width` property of a `block` element?
    9. Can we specify the `width` property of an `inline` element?
    10. Can we specify the `height` property of a `block` element?
    11. Can we specify the `height` property of an `inline` element?
    12. What display property value should I use in order to be able to specify the `width` and `height` of a `<span>`?
2. Create the following page:

 <div id="media-container-image-Block vs Inline Elements - Task">
  <img src="./images/block-vs-inline-elements-task.png"
      alt="Block vs Inline Elements - Task" title="Block vs Inline Elements - Task" style="border:1px solid gray; margin: 10px 5px;"></img>
 </div>
In order to do that, use the following HTML markup:

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Block VS Inline Elements Task</title>
    <link rel="stylesheet" href="stylesheets/task.css" type="text/css">
  </head>

  <body>

    <span>Some content here.</span>
    <p>
      This is a long paragraph
    </p>
    <small>This is some small text</small>

    <h1>Header 1 it's quite a big font</h1>

  </body>

</html>
```
We are giving you here some CSS rules that you will need (but not all that you will need):

1. All elements should have `box-sizing` equal to `border-box`.
2. Width of paragraph should be `300px`
3. Height of paragraph should be `50px`
4. `text-align` can be used to `center` the text.
5. `<h1>` `font-size` should be `12px`.


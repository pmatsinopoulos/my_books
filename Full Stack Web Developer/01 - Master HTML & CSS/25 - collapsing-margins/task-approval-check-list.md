1. Student needs to implement the page in 2 versions.
2. Version 1, using a hack to preserve the vertical margins of the containers of the images.
3. Here is a possible solution for the first version:
``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Two Divs With Vertical Margins</title>
    <link rel="stylesheet" href="stylesheets/task.css" type="text/css">
  </head>

  <body>

    <div id="top-image-container">
      <img src="images/mykonos.jpg" alt="Mykonos" title="Mykonos"/>
    </div>

    <div class="preserve-vertical-margins"></div>

    <div id="bottom-image-container">
      <img src="images/santorini.jpg" alt="Santorini" title="Santorini"/>
    </div>

  </body>
</html>
```
with CSS:
``` css
* {
    box-sizing: border-box;
    padding: 0;
    margin: 0;
}

img {
    width: 400px;
    height: 300px;
}

div {
    text-align: center;
}

#top-image-container {
    margin: 80px auto 40px;
}

#bottom-image-container {
    margin: 40px auto 80px;
}

.preserve-vertical-margins {
    overflow: auto;
}
```
4. Version 2 should not be using vertical margins on both directions.
5. Here is a possible implementation for version 2:
``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Two Divs With Vertical Margins</title>
    <link rel="stylesheet" href="stylesheets/task.css" type="text/css">
  </head>

  <body>

    <div id="top-image-container">
      <img src="images/mykonos.jpg" alt="Mykonos" title="Mykonos"/>
    </div>

    <div id="bottom-image-container">
      <img src="images/santorini.jpg" alt="Santorini" title="Santorini"/>
    </div>

  </body>
</html>
```
and the CSS:
``` css
* {
    box-sizing: border-box;
    padding: 0;
    margin: 0;
}

img {
    width: 400px;
    height: 300px;
}

div {
    text-align: center;
}

#top-image-container {
    margin: 80px auto 80px;
}

#bottom-image-container {
    margin: 0 auto 80px;
}
```

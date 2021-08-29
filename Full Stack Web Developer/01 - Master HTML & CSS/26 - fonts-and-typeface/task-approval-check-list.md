1. Make sure that the page is created as requested.
2. Here is a sample implementation
The HTML:
``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Task with Fonts</title>
    <link href='https://fonts.googleapis.com/css?family=Ubuntu+Mono:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="stylesheets/task.css" type="text/css">
  </head>

  <body>
    <div id="opacity"></div>
    <h1>Tech Career Booster</h1>
    <hr/>
    <small>Online Computer Programming School</small>
  </body>

</html>
```
and the CSS:
``` CSS
* {
    box-sizing: border-box;
    padding: 0;
    margin: 0;
}

html {
    font-size: 62.5%;
}

body {
    font-family: "Ubuntu Mono", sans-serif;
    font-size: 1.6rem;
    text-align: center;
    color: white;
    background-image: url("../images/shady-forest.jpg");
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    background-size: cover;
    margin-top: 43vh;
}

#opacity {
    position: fixed;
    top: 0;
    left: 0;
    height: 100%;
    width: 100%;
    background-color: rgba(0, 0, 0, 0.3);
    z-index: -1;
}
h1 {
    font-size: 6.4rem;
}

small {
    font-size: 3.2rem;
}

hr {
    width: 70%;
    margin: 0 auto;
}
```
3. You need to make sure that all the requirements of the task are fulfilled and student understands the details.

**Important**: Make sure your student uses their own brand, instead of Tech Career Booster brand, logos and motos. These are pages that they create and they
should promote their profile and their work. This is a general rule and does not apply to this task only.

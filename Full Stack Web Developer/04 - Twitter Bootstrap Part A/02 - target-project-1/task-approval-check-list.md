1. Student needs to implement a Web page looking similar to the one requested.
2. Here is an example implementation:
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
    <link rel="stylesheet" href="stylesheets/task.css" type="text/css">

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
          <a class="navbar-brand" href="#">E-Shop</a>
        </div>

        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#sell">Sell</a></li>
            <li><a href="#register">Register</a></li>
            <li><a href="#sign_in">Sign In</a></li>
            <li><a href="#cart">Cart</a></li>
            <li><a href="#search">Search</a></li>
          </ul>
        </div>
      </div>

    </nav>

    <div class="container">

      <div class="stand-out">
        <h1>Shop Directly from People Around the World</h1>
        <p class="lead">Discover items you can't find anywhere else!</p>
      </div>

    </div><!-- /.container -->

  </body>
</html>
```
and the corresponding CSS:
``` css
body {
    padding-top: 50px;
}

.stand-out {
    padding: 50px 50px;
    text-align: center;
}
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

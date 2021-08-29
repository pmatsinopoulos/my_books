1. Make sure that the student builds a page like the one given in task description.
2. This is a sample implementation:
``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Cover Page - Task</title>

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

    <div id="cover"></div>

    <nav id="navigation-bar-container" class="navbar navbar-inverse navbar-fixed-top">

      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>

      <div class="navbar-header">
        <a class="navbar-brand" href="#">Athens</a>
      </div>

      <div id="navbar" class="collapse navbar-collapse">
        <ul class="nav navbar-nav navbar-right">
          <li class="active"><a href="#">Home</a></li>
          <li><a href="#museums">Museums</a></li>
          <li><a href="#theaters">Theaters</a></li>
          <li><a href="#cinemas">Cinemas</a></li>
        </ul>
      </div>

    </nav>

    <div id="center-content">
      <h1>Any Time of The Year</h1>
      <p class="lead">Visit Athens and Greek Islands</p>
      <p class="lead">
        <a href="#" class="btn btn-lg btn-success">Book Now</a>
      </p>
    </div>

    <div id="footer-content">
      <small>Copyright &copy; Tech Career Booster</small>
    </div>
  </body>
</html>
```
with CSS:
``` css
html {
    font-size: 62.5%;
    width: 100%;
    height: 100%;
}

body {
    position: relative;
    font-size: 1.4rem;
    width: 100%;
    height: 100%;
    /* CIRAPS */
    background-color: #2b542c;
    background-image: url("../images/parthenon.jpg");
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: left top;
    background-size: 100% 100%;
    color: White;
    display: table;
}

#cover {
     position: absolute;
     width: 100%;
     height: 100%;
     top: 0;
     left: 0;
     background-color: rgba(0, 0, 0, 0.5);
     z-index: -1;
}

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

/* The following is necessary. Otherwise, when pulling the navbar on the right it sticks to the right edge of the navbar container */
#navbar ul {
    margin-right: 0;
}

#center-content {
    display: table-cell;
    vertical-align: middle;
    text-align: center;
}

#footer-content {
    position: absolute;
    bottom: 20px;
    left: 0;
    width: 100%;
    text-align: center;
}
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

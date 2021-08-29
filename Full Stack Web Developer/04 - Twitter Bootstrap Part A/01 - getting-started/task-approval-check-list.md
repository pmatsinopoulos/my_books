1. Student should build his image roster page using Twitter Bootstrap.
2. The correct classes should have been used.
3. Here is a sample implementation:
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
    <div class="container">
      <h1>Image Roster</h1>
    </div>

    <div class="container-fluid">
      <div class="row">
        <div class="col-xs-12 col-sm-4 col-lg-2 image-container">
          <img src="images/birds-with-rabbit.jpg">
        </div>

        <div class="col-xs-12 col-sm-4 col-lg-2 image-container">
          <img src="images/red-fox.jpg">
        </div>

        <div class="col-xs-12 col-sm-4 col-lg-2 image-container">
          <img src="images/small-cat.jpg">
        </div>

        <div class="col-xs-12 col-sm-4 col-lg-2 image-container">
          <img src="images/doggy.jpg">
        </div>

        <div class="col-xs-12 col-sm-4 col-lg-2 image-container">
          <img src="images/butterfly-dog-nose.jpg">
        </div>

        <div class="col-xs-12 col-sm-4 col-lg-2 image-container">
          <img src="images/black-dog.jpg">
        </div>
      </div>
    </div>

    <div class="container">
      <h6>Tech Career Booster</h6>
    </div>
  </body>
</html>
```
with CSS:
``` css
.image-container img {
    width: 100%;
    height: 100%;
}

h1, h6 {
    text-align: center;
}
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

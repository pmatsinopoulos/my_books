1. Student has implemented the page as requested.
2. A sample implementation is given here:
``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Twitter Bootstrap Reference Page</title>

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
    <!-- Carousel
        ================================================== -->
    <div id="my-carousel" class="carousel slide" data-ride="carousel">

      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#my-carousel" data-slide-to="0" class="active"></li>
        <li data-target="#my-carousel" data-slide-to="1"></li>
        <li data-target="#my-carousel" data-slide-to="2"></li>
        <li data-target="#my-carousel" data-slide-to="3"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">

        <div class="item active">
          <img src="images/london-image-1.jpg" alt="London Landscape Image 1">
          <div class="carousel-caption">
            <h1>Thesqua.re</h1>
            <p class="lead">The travel community that works for you!</p>
          </div>
        </div>

        <div class="item">
          <img src="images/london-image-2.jpg" alt="London Landscape Image 2">
          <div class="carousel-caption">
            <h1>Premier Inn</h1>
            <p class="lead">Wake up Wonderful!</p>
          </div>
        </div>

        <div class="item">
          <img src="images/london-image-3.jpg" alt="London Landscape Image 2">
          <div class="carousel-caption">
            <h1>Stay City</h1>
            <p class="lead">Experience More for Less!</p>
          </div>
        </div>

        <div class="item">
          <img src="images/london-image-4.jpg" alt="London Landscape Image 2">
          <div class="carousel-caption">
            <h1>Hilton</h1>
            <p class="lead">Stop Clicking Around. Start Saving!</p>
          </div>
        </div>
      </div>

      <a class="left carousel-control" href="#my-carousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>

      <a class="right carousel-control" href="#my-carousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->

    <!-- The top navigation bar -->

    <nav id="navigation-bar" class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">

        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>

        <div class="navbar-header">
          <a class="navbar-brand" href="#">London Accommodation </a>
        </div>

        <div id="navbar" class="navbar-collapse collapse">

          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
          </ul>

        </div>
      </div>
    </nav>

    <div class="container">

      <div class="jumbotron">
        <h1>Staying in London</h1>
        <p class="lead">
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
          exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
          pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
        </p>
      </div>

      <div id="all-images-and-info-container">
        <div class="row">
          <div class="col-lg-6 image-and-info-container">
            <img class="img-circle" src="images/thesquare-small-image-140x140.jpg" alt="Thesquare Room" width="140" height="140">
            <h2>Thesqua.re</h2>
            <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
            <p><a class="btn btn-info" href="#" role="button">View details &raquo;</a></p>
          </div>

          <div class="col-lg-6 image-and-info-container">
            <img class="img-circle" src="images/premierinn-small-image-140x140.jpg" alt="Premier Inn Room" width="140" height="140">
            <h2>Premier Inn</h2>
            <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
            <p><a class="btn btn-info" href="#" role="button">View details &raquo;</a></p>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-6 image-and-info-container">
            <img class="img-circle" src="images/staycity-small-image-140x140.jpg" alt="Stay City Room" width="140" height="140">
            <h2>Stay City</h2>
            <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
            <p><a class="btn btn-info" href="#" role="button">View details &raquo;</a></p>
          </div>

          <div class="col-lg-6 image-and-info-container">
            <img class="img-circle" src="images/hilton-small-image-140x140.jpg" alt="Hilton Room" width="140" height="140">
            <h2>Hilton</h2>
            <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
            <p><a class="btn btn-info" href="#" role="button">View details &raquo;</a></p>
          </div>
        </div>
      </div>


      <!-- Tabs with information -->
      <div id="tabs-with-information">
        <ul class="nav nav-tabs" role="tablist">
          <li class="active" role="presentation"><a href="#thesquare" data-toggle="tab" aria-controls="dashboard" role="tab">Thesqua.re</a></li>
          <li role="presentation"><a href="#premier-inn" data-toggle="tab" aria-controls="payments" role="tab">Premier Inn</a></li>
          <li role="presentation"><a href="#stay-city" data-toggle="tab" aria-controls="invoices" role="tab">Stay City</a></li>
          <li role="presentation"><a href="#hilton" data-toggle="tab" aria-controls="settings" role="tab">Hilton</a></li>
        </ul>

        <div class="tab-content">
          <div id="thesquare" class="tab-pane active" role="tabpanel">
            <table class="table table-striped">
              <tr>
                <td>City Reach Serviced Apartments, Limehouse</td>
                <td>min stay: 3 nights</td>
                <td>nearest transport: Limehouse</td>
                <td><div class="label label-info">£597</div></td>
              </tr>

              <tr>
                <td>Contemporary Times Square Serviced Apartments</td>
                <td>min stay: 3 nights</td>
                <td>nearest transport: Aldgate East</td>
                <td><div class="label label-info">£597</div></td>
              </tr>

              <tr>
                <td>Altitude Point Serviced Apartments, Aldgate</td>
                <td>min stay: 3 nights</td>
                <td>nearest transport: Aldgate East</td>
                <td><div class="label label-info">£543</div></td>
              </tr>
            </table>
          </div>

          <div id="premier-inn" class="tab-pane" role="tabpanel">
            <table class="table table-striped">
              <tr>
                <td>159 Tower Bridge Road, Southwark, London SE1 3LP</td>
                <td>3 nights</td>
                <td>nearest transport: London Bridge Train Station</td>
                <td><div class="label label-info">£376</div></td>
              </tr>

              <tr>
                <td>15A Great Suffolk Street, Southwark, London SE1 0FL</td>
                <td>3 nights</td>
                <td>nearest transport: Southwark Underground Station</td>
                <td><div class="label label-info">£344</div></td>
              </tr>

              <tr>
                <td>28 Great Tower Street, London, EC3R 5AT</td>
                <td>3 nights</td>
                <td>nearest transport: Tower Hill tube station</td>
                <td><div class="label label-info">£217</div></td>
              </tr>
            </table>
          </div>

          <div id="stay-city" class="tab-pane" role="tabpanel">
            <table class="table table-striped">
              <tr>
                <td>Deptford Bridge Stn</td>
                <td>3 nights</td>
                <td>nearest transport: Deptford Bridge Station</td>
                <td><div class="label label-info">£273</div></td>
              </tr>

              <tr>
                <td>Greenwich High Road</td>
                <td>3 nights</td>
                <td>nearest transport: Greenwich mainline Station</td>
                <td><div class="label label-info">£372</div></td>
              </tr>

              <tr>
                <td>London, Heathrow</td>
                <td>3 nights</td>
                <td>nearest transport: Hayes & Harlington train station</td>
                <td><div class="label label-info">£183</div></td>
              </tr>
            </table>
          </div>

          <div id="hilton" class="tab-pane" role="tabpanel">
            <table class="table table-striped">
              <tr>
                <td>Hilton London Metropole</td>
                <td>3 nights</td>
                <td>nearest transport: Limehouse</td>
                <td><div class="label label-info">£173</div></td>
              </tr>

              <tr>
                <td>Conrad London St. James</td>
                <td>3 nights</td>
                <td>nearest transport: Buckingham Palace</td>
                <td><div class="label label-info">£309</div></td>
              </tr>

              <tr>
                <td>On London Paddington</td>
                <td>3 nights</td>
                <td>nearest transport: Paddingston</td>
                <td><div class="label label-info">£209</div></td>
              </tr>
            </table>
          </div>

        </div>
      </div>
    </div>
  </body>
</html>
```
and CSS
``` css
html {
    font-size: 62.5%;
}

body {
    font-size: 1.4rem;
    padding-bottom: 30px;
}

#navigation-bar {
    border-radius: 10px;
    width: 80%;
    margin: 10px auto 0;
}

#my-carousel,
#all-images-and-info-container,
#tabs-with-information {
    margin-bottom: 30px;
}

.image-and-info-container {
    text-align: center;
    padding: 20px;
}

#tabs-with-information a {
    font-size: 3.0rem;
}

table {
    margin-top: 40px;
}
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

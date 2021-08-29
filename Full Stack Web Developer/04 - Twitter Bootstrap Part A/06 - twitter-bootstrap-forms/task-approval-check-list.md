1. Make sure that the student implements the 3 forms exactly as requested.
2. A sample implementation is given below:
``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Twitter Bootstrap Form Reference Page - Task</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="stylesheets/task.css" type="text/css">

    <!-- jQuery is a prerequisite for Bootstrap JavaScript library to work properly -->
    <script src="https://code.jquery.com/jquery-2.1.4.js"></script>

    <!-- Bootstrap JavaScript Files -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
            crossorigin="anonymous"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

    <div class="container">
      <div class="row">
        <div class="col-md-6 col-md-offset-3">
          <h3>Sign In</h3>
          <p>Sign in today for more experience.</p>

          <form>
            <div class="form-group">
              <label for="email">Email</label>
              <div class="input-group">
                    <span class="input-group-addon">
                      @
                    </span>
                <input type="email" id="email" placeholder="Enter email" class="form-control">
              </div>
            </div>

            <div class="form-group">
              <label for="password">Password</label>
              <div class="input-group">
                    <span class="input-group-addon">
                      <span class="glyphicon glyphicon-asterisk"></span>
                    </span>
                <input type="password" id="password" placeholder="Password" class="form-control">
              </div>
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

            <div class="clearfix"></div>
          </form>
        </div>
      </div> <!-- row -->

      <div class="page-header">
      </div>

      <div class="row">
        <div class="col-md-6 col-md-offset-3">

          <h3>Sign Up</h3>
          <p>Sign Up - No Credit Card Required</p>

          <form class="form-horizontal">

            <div class="form-group">
              <label class="col-md-2 control-label" for="email2">Email</label>
              <div class="col-md-10">

                <div class="input-group">
                  <span class="input-group-addon">@</span>
                  <input type="email" placeholder="Email" class="form-control input-lg" id="email2">
                </div>
                <span class="help-block">Type in your email</span>

              </div>
            </div>

            <div class="form-group">
              <label class="col-md-2 control-label" for="password2">Password</label>
              <div class="col-md-10">

                <div class="input-group">
                      <span class="input-group-addon">
                        <span class="glyphicon glyphicon-asterisk"></span>
                      </span>
                  <input type="password" placeholder="Password" class="form-control input-lg" id="password2">
                </div>
                <span class="help-block">Type in your password</span>

              </div>
            </div>

            <div class="form-group">
              <label class="col-md-2 control-label" for="password-confirmation">Password Confirmation</label>
              <div class="col-md-10">

                <div class="input-group">
                      <span class="input-group-addon">
                        <span class="glyphicon glyphicon-asterisk"></span>
                      </span>
                  <input type="password" placeholder="Confirm Password" class="form-control input-lg"
                         id="password-confirmation">
                </div>
                <span class="help-block">Type in your password again</span>

              </div>
            </div>

            <div class="form-group">
              <label class="col-md-2 control-label" for="name">Name</label>
              <div class="col-md-10">

                <div class="input-group">
                      <span class="input-group-addon">
                        <span class="glyphicon glyphicon-user"></span>
                      </span>
                  <input type="text" placeholder="Name" class="form-control input-lg" id="name">
                </div>
                <span class="help-block">Type in your full name</span>

              </div>
            </div>

            <div class="form-group text-right">
              <button type="button" class="btn btn-primary btn-lg">Sign Up</button>
            </div>

            <!-- the form needs to be repeated with all fields green and some red -->

            <div class="page-header">
              <h2>Sign Up</h2>
              <small>Submitted Form With An Error</small>
            </div>

            <div class="form-group has-success">
              <label class="col-md-2 control-label" for="email3">Email</label>
              <div class="col-md-10">

                <div class="input-group">
                  <span class="input-group-addon">@</span>
                  <input type="email" placeholder="Email" class="form-control input-lg" id="email3" value="foo@mailinator.com">
                </div>
                <span class="help-block">Type in your email</span>

              </div>
            </div>

            <div class="form-group has-success">
              <label class="col-md-2 control-label" for="password3">Password</label>
              <div class="col-md-10">

                <div class="input-group">
                      <span class="input-group-addon">
                        <span class="glyphicon glyphicon-asterisk"></span>
                      </span>
                  <input type="password" placeholder="Password" class="form-control input-lg" id="password3" value="12345678">
                </div>
                <span class="help-block">Type in your password</span>

              </div>
            </div>

            <div class="form-group has-error">
              <label class="col-md-2 control-label" for="password-confirmation-3">Password Confirmation</label>
              <div class="col-md-10">

                <div class="input-group">
                      <span class="input-group-addon">
                        <span class="glyphicon glyphicon-asterisk"></span>
                      </span>
                  <input type="password" placeholder="Confirm Password" class="form-control input-lg"
                         id="password-confirmation-3" value="1234">
                </div>
                <span class="help-block">Type in your password again</span>

              </div>
            </div>

            <div class="form-group has-success">
              <label class="col-md-2 control-label" for="name2">Name</label>
              <div class="col-md-10">

                <div class="input-group">
                      <span class="input-group-addon">
                        <span class="glyphicon glyphicon-user"></span>
                      </span>
                  <input type="text" placeholder="Name" class="form-control input-lg" id="name2" value="Foo Bar">
                </div>
                <span class="help-block">Type in your full name</span>

              </div>
            </div>

            <div class="form-group text-right">
              <button type="button" class="btn btn-primary btn-lg">Sign Up</button>
            </div>
          </form>
        </div>
      </div>
    </div> <!-- main container -->
  </body>
</html>
```
The `stylesheets/task.css` is not important. No special style is required to implement this task.

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

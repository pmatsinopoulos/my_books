Your student needs to implement the page as requested. Here is a sample implementation:
``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modals - Task</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/stylesheets/task.css">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"
            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
            crossorigin="anonymous"></script>

    <!-- Bootstrap JavaScript files AFTER jQuery -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <!-- Custom Task JavaScript file -->
    <script src="assets/javascripts/task.js"></script>
  </head>

  <body>
    <button class="btn btn-lg btn-success" data-toggle="modal" data-target=".modal">Open Modal To Choose Image</button>

    <div class="modal fade" tabindex="-1" role="dialog">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-header">

            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true" class="glyphicon glyphicon-remove"></span></button>
            <h4 class="modal-title">Choose Your Favourite City Image</h4>

          </div>

          <div class="modal-body text-center">

            <div class="row">
              <div class="col-md-6">
                <a href="#" class="choose-city">
                  <img src="assets/images/london.jpg" alt="London"/>
                </a>

              </div>

              <div class="col-md-6">
                <a href="#" class="choose-city">
                  <img src="assets/images/paris.jpg" alt="Paris"/>
                </a>
              </div>
            </div>

          </div>
          <div class="modal-footer">

            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

          </div>
        </div>
      </div>
    </div>

    <div class="container page-header text-center">
      <img id="central-image" src="http://placehold.it/640x480" alt="Central Image"/>
    </div>

  </body>
</html>
```
with CSS:
``` css
.modal img {
    width: 100%;
    height: 300px;
}

#central-image {
    width: 640px;
    height: 480px;
}
```
and JavaScript:
``` javascript
$(document).ready(function(){
    var $centralImage = $('#central-image');
    $('a.choose-city').on('click', function() {
        $('.modal').modal('hide');
        var imageSrc = $(this).find('img').attr('src');
        $centralImage.attr('src', imageSrc);
    });
});
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

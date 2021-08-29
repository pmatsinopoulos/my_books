Your student needs to implement the UFO shooting game as required. Here is a sample implementation:

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task</title>

    <!-- Bootstrap CSS files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/stylesheets/task.css" type="text/css">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"
            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
            crossorigin="anonymous"></script>

    <!-- Custom JavaScript -->
    <script src="assets/javascripts/task.js"></script>
  </head>

  <body>

    <div id="ufo-image" class="image-container hidden">
      <a href="#">
        <img src="assets/images/small-ufo-image.png" class="img-circle" alt="ufo"/>
      </a>
    </div>

    <div id="score-container">
      <h1>Score:
        <span id="score">0</span>
      </h1>
    </div>

    <div id="timer-container">
      <h1>Time Left:
        <span id="timer"></span>
      </h1>
    </div>

  </body>
</html>
```

The CSS:

``` css
* {
    box-sizing: border-box;
}

body {
    position: relative;
}

.image-container {
    position: absolute;
    top: 0;
    left: 0;
}

#score-container,
#timer-container {
    margin: 10px 20px;
}

#score-container {
    color: green;
}

#timer-container {
    color: red;
}
```

and the JavaScript:

``` javascript
$(document).ready(function() {
    var imageWidth = 150;
    var imageHeight = 78;
    var score = 0;

    var displayImage = function() {
        var windowWidth = $(window).width();
        var windowHeight = $(window).height();
        var newTop = Math.random() * (windowHeight - imageHeight);
        var newLeft = Math.random() * (windowWidth - imageWidth);

        $('#ufo-image').
            css({'top': newTop, 'left': newLeft}).
            removeClass('hidden');
    };

    var hideImage = function() {
        $('#ufo-image').addClass('hidden');
    };

    var random = function() {
        return (Math.random() * 2000);
    };

    var increaseScore = function() {
        score += 1;
    };

    var displayScore = function() {
        $('#score').html(score);
    };

    var timer = 60; // the duration of the game.

    var handleImage = function() {
        hideImage();
        displayImage();
        if (timer > 0) {
            setTimeout(handleImage, random());
        }
    };

    var displayTimeLeft = function() {
        $('#timer').html(timer);
    };

    var decreaseTimeLeft = function() {
        timer -= 1;
    };

    var initializeTimer = function() {
        displayTimeLeft();

        var timerInterval = setInterval(function() {
            decreaseTimeLeft();

            if (timer < 0) {
                clearInterval(timerInterval);
                hideImage();
            }
            else {
                displayTimeLeft();
            }

        }, 1000);
    };

    initializeTimer();

    setTimeout(handleImage, random());

    $('#ufo-image a').on('click', function(){
        hideImage();
        increaseScore();
        displayScore();
        return false;
    });
});
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

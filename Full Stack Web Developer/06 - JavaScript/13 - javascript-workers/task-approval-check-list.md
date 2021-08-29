## Task

Make sure your student implements the JavaScript worker that reverses a string according to the
requirements. 

Here is a sample implementation:

(1) the HTML page:

``` html
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Reverse String</title>
    <script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="assets/javascripts/main.js"></script>
  </head>

  <body>
    <h1>Reverse String</h1>
    <p>
      <textarea id="user-input" cols="20" rows="5"></textarea>
      <br/>
      <button id="reverse">Reverse</button>
      <div id="result"></div>
    </p>
  </body>
</html>
```

(2) the `main.js` script:

``` JavaScript
(function($) {
  $(document).ready(function() {
    var worker = new Worker('assets/javascripts/worker.js');

    $(worker).on('message', function(event) {
      var data = event.originalEvent.data;
      if(data.done) {
        $('#reverse').attr('disabled', null);
      }
      $('#result').html(data.reversedInput);
    });

    $('#reverse').on('click', function() {
      // take the input
      var userInput = $('#user-input').val().trim();

      if (userInput === '') {
        return false;
      }

      $(this).attr('disabled', 'disabled');

      worker.postMessage({userInput: userInput});

      return false;
    });
  });
})(jQuery);
```

(3) the `worker.js` script:

``` JavaScript
addEventListener('message', function(event) {
  var userInput = event.data.userInput;
  var result = '';
  var i = userInput.length - 1;
  var interval = null;

  function reverse() {
    if (i < 0) {
      clearInterval(interval);
      postMessage({done: true, reversedInput: result});
    }
    else {
      result += userInput[i--];
      postMessage({done: false, reversedInput: result});
    }
  }

  interval = setInterval(reverse, 50);

});
```

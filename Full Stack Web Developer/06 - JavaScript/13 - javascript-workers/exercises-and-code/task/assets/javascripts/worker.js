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

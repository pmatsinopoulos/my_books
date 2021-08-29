(1) Make sure that your student creates an HTML page that satisfies the requirements. Here is a sample implementation:

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task - Event Handling</title>
    <script src="assets/javascripts/task.js"></script>
  </head>
  <body>
    <button id="button-1">Button 1</button>
    <button id="button-2">Button 2</button>
  </body>
</html>
```

and JavaScript:

``` javascript
window.onload = function(){
    var button1 = document.getElementById('button-1');
    var button2 = document.getElementById('button-2');
    var bigButtonWidth = "300px;";
    var smallButtonWidth = "110px";

    button1.style = "width: " + smallButtonWidth;
    button2.style = "width: " + smallButtonWidth;

    button1.addEventListener('click', function() {
        this.style = "width: 300px;";
        button2.style = "width: 110px;";
    });

    button2.addEventListener('click', function() {
        this.style = "width: " + bigButtonWidth;
        button1.style = "width: " + smallButtonWidth;
    });
};
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

(2) Make sure that your student creates an HTML page that satisfies the requirements. Here is a sample implementation:
``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task 2 - Event Handling</title>
    <script src="assets/javascripts/task-2.js"></script>
    <style>
      input, button {
        font-size: 24px;
      }
    </style>
  </head>
  <body>
    <input type="text" placeholder="Type your name" id="name">
    <input type="text" placeholder="Type your favourite color" id="color">
    <button id="save-button" type="submit">Save</button>
  </body>
</html>
```

with JavaScript

``` javascript
window.onload = function() {
    var input1 = document.getElementById('name');
    var input2 = document.getElementById('color');

    var changeBorderOnBlur = function() {
        if (this.value === '') {
            this.style="border: 1px solid red;";
        }
        else {
            this.style="border: 1px solid green;";
        }

    };

    var changeBorderOnFocus = function() {
        this.style = "border: 1px solid blue;";
    };

    var inputs = [input1, input2];
    for (var i = 0; i < inputs.length; i++) {
        inputs[i].addEventListener('blur', changeBorderOnBlur);
        inputs[i].addEventListener('focus', changeBorderOnFocus);
    }
};
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

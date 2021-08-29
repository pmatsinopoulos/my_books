## Task

This is a JavaScript snippet that reverses a string in a very inefficient way. It takes 1 second to reverse
every letter of the string. 

``` JavaScript
var input = '12345678';
var result = '';
var i = input.length - 1;
var interval = null;

function reverse() {
  if (i < 0) {
    clearInterval(interval);
  }
  else {
    result += input[i--];
    console.log("result:", result);
  }
}

interval = setInterval(reverse, 1000);
```

You can try that on a JSBin or on JSFiddle.

But, it can be used to simulate a long-running job that could be executed in the background.

Your task is the following:

Create a worker that reverses a string. Every time it reverses a character, it notifies back the main script, which prints
the current result.

Here is a video that demonstrates the page you need to build.

<div id="media-title-video-JavaScript Worker - Task Reversing a String">JavaScript Worker - Task Reversing a String</div>
<a href="https://player.vimeo.com/video/254920273"></a>

Note that the reverse implementation presented in the JavaScript code above, uses a 1 second delay between characters processing.
Use a much smaller value in order to make the reverse process for long tests finish quickly. Like what you see in the video above.

Also, make sure that while the reversing process is taking place, the `Reverse` button should be disabled. When the process finishes,
then `Reverse` button should become enabled again.

**Important**: upload your code to your Github account and let your mentor know about it.

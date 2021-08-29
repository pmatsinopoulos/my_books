Make sure your student implements the page with all the requirements satisfied. Here is a sample
implementation:

The HTML page:

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task - Opening And Closing Windows</title>
  </head>
  <body>
    <p>
      Opening And Closing Windows Exercise
    </p>

    <script src="assets/javascripts/task.js"></script>
  </body>
</html>
```

and the corresponding JavaScript content:

``` javascript
function start() {
    var webPages = [
        {url: "https://www.google.com", windowHandle: null},
        {url: "http://www.nationalgeographic.com", windowHandle: null},
        {url: "http://cnn.com", windowHandle: null},
        {url: "https://www.zsl.org", windowHandle: null},
        {url: "http://www.telegraph.co.uk/", windowHandle: null},
        {url: "http://www.go2africa.com/", windowHandle: null},
        {url: "http://www.animalplanet.com/", windowHandle: null},
        {url: "http://www.theguardian.com/", windowHandle: null},
        {url: "http://travel.usnews.com/", windowHandle: null},
        {url: "http://www.independent.co.uk/", windowHandle: null}
    ];

    // open the windows recursively
    function openWindows() {
        webPages[i].windowHandle = open(webPages[i].url);
        i += 1;
        if (i >= webPages.length) {
            // When we have opened all the windows, we will schedule to start closing the even windows. Starting from the first
            i = 0;
            setTimeout(closeEvenWindows, 5000);
            return;
        }
        setTimeout(openWindows, 2000);
    }

    function closeEvenWindows() {
        webPages[i].windowHandle.close();
        i += 2;
        if (i >= webPages.length) {
            // When we have closed all the even windows, we will schedule to start closing the odd windows
            i = 1;
            setTimeout(closeOddWindows, 2000);
            return;
        }
        setTimeout(closeEvenWindows, 2000);
    }

    function closeOddWindows() {
        webPages[i].windowHandle.close();
        i += 2;
        if (i >= webPages.length) {
            // We have closed all the windows. We need to ask the user whether he wants to repeat the process.
            var answer = confirm("Do you want to see this opening and closing of windows again?");
            if (answer) {
                i = 0;
                openWindows();
            }
            return;
        }
        setTimeout(closeOddWindows, 2000);
    }

    // do the actual work by starting to open the windows (starting from first window)
    var i = 0;
    openWindows();
} // start()
//----------

setTimeout(function () {

    start();

}, 5000);
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

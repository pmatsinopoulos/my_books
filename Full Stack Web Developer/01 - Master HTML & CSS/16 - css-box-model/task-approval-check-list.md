1. Make sure student has sent you all the screenshots for the inspection that he did on the "www.google.com" page.
2. He has to implement the page as requested. Here is a sample HTML content that might be considered a solution,
alongside the necessary CSS file. Make sure that the inspection on the elements `body`, `h1`, `li` on the page that the student has sent is the required one.
``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="stylesheets/task.css" type="text/css">
    <title>Task for Box Model</title>
  </head>

  <body>
    <h1>Shopping List</h1>

    <ul>
      <li>Cheese</li>
      <li>Rice</li>
      <li>Coffee</li>
      <li>Milk</li>
      <li>Wine</li>
    </ul>

  </body>
</html>
```
``` css
body {
    box-sizing: border-box;
    margin: 0 0;

    padding: 40px 40px;
}

body * {
    box-sizing: inherit;
    margin: inherit;
}

h1 {
    margin-bottom: 30px;
}

ul li {
    margin: 5px 0;
}
```

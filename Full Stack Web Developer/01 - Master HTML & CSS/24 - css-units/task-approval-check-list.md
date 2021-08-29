1. Student implements the page as expected.
2. One solution might be the following:
``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Default Font Size</title>
    <link rel="stylesheet" href="stylesheets/task.css" type="text/css">
  </head>

  <body>
    <h1>h1: officia deserunt mollit</h1>
    <h2>h2: Excepteur sint occaecat</h2>
    <p>
      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
      Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
      in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,
      sunt in culpa qui officia deserunt mollit anim id est laborum.
    </p>

    <ul>
      <li>Lorem ipsum dolor</li>
      <li>consectetur adipiscing elit</li>
      <li>
        <ol>
          <li>fugiat nulla pariatur</li>
          <li>occaecat cupidatat non</li>
          <li>mollit anim id</li>
        </ol>
      </li>
      <li>quis nostrud exercitation</li>
    </ul>
    <small>&lt;small&gt;: Footer</small>
  </body>

</html>
```
with CSS
``` css
* {
    box-sizing: border-box;
}

html {
    font-size: 62.5%
}

body {
    font-size: 1.6rem;
}

h1 {
    font-size: 3.2rem;
}

h2 {
    font-size: 2.8rem;
}

p {
    font-size: 1.8rem;
}

li {
    font-size: 1.4rem;
}
```
3. Make sure that has done the chage on the `li` to be using `em` instead of `rem` and that he has identified the nesting `em` problem.

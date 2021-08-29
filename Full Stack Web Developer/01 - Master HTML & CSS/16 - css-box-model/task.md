1. Using Chrome visit the page "www.google.com".
2. Inspect the following elements. Take a screenshot of their CSS Box Model as it is presented by the developer tools.
For each one of the boxes, make sure you write down margin, border, padding and content sizes.

    1. The Google doodle image
    2. The Google search box area.
    3. The Google Search box button.
    4. The Google "I'm feeling lucky" button.
3. Implement the following page:

 <div id="media-container-image-CSS Box Model Shopping List">
  <img src="./images/css-box-model-task-page-shopping-list.png"
      alt="CSS Box Model Shopping List" title="CSS Box Model Shopping List" style="border:1px solid gray; margin: 10px 5px;"></img>
 </div>
 
Make sure that:
1. The page has 2 elements, besides the `<body>`. An `<h1>` and an unordered list `<ul>`.
2. The `body` has the following properties when inspected with developer tools:

 <div id="media-container-image-Shopping List body element styles">
  <img src="./images/css-box-model-shopping-list-body-element-styles.png"
      alt="Shopping List body element styles" title="Shopping List body element styles" style="border:1px solid gray; margin: 10px 5px;"></img>
 </div>
 <div id="media-container-image-Shopping List body element computed tab">
  <img src="./images/css-box-model-shopping-list-body-element-computed-tab.png"
      alt="Shopping List body element computed tab" title="Shopping List body element computed tab" style="border:1px solid gray; margin: 10px 5px;"></img>
 </div>
 
3. The `h1` has the following properties when inspected with developer tools:
 <div id="media-container-Shopping List h1 element styles">
  <img src="https://s3.amazonaws.com/tech-career-booster-courses/01-full-stack-web-developer/sections/01-html-and-css/chapters/16-css-box-model/assets/images/css-box-model-shopping-list-h1-element-styles.png"
      alt="Shopping List h1 element styles" title="Shopping List h1 element styles" style="border:1px solid gray; margin: 10px 5px;"></img>
 </div>
 <div id="media-container-Shopping List h1 element computed tab">
  <img src="https://s3.amazonaws.com/tech-career-booster-courses/01-full-stack-web-developer/sections/01-html-and-css/chapters/16-css-box-model/assets/images/css-box-model-shopping-list-h1-element-computed-tab.png"
      alt="Shopping List h1 element computed tab" title="Shopping List h1 element computed tab" style="border:1px solid gray; margin: 10px 5px;"></img>
 </div>
 
4. The `ul` has default style as applied by the browser.
5. The `li` inside the `ul` has the following properties when inspected with developer tools:

 <div id="Shopping List li element styles">
  <img src="https://s3.amazonaws.com/tech-career-booster-courses/01-full-stack-web-developer/sections/01-html-and-css/chapters/16-css-box-model/assets/images/css-box-model-shopping-list-li-element-styles.png"
      alt="Shopping List li element styles" title="Shopping List li element styles" style="border:1px solid gray; margin: 10px 5px;"></img>
 </div>
 <div id="Shopping List li element computed tab">
  <img src="https://s3.amazonaws.com/tech-career-booster-courses/01-full-stack-web-developer/sections/01-html-and-css/chapters/16-css-box-model/assets/images/css-box-model-shopping-list-li-element-computed-tab.png"
      alt="Shopping List li element computed tab" title="Shopping List li element computed tab" style="border:1px solid gray; margin: 10px 5px;"></img>
 </div>
 
6. All elements should have `box-sizing` property equal to `border-box`. However, do not set this property to each one of them literally. Use a technique
that would allow you to write this rule with as little CSS coding as possible.

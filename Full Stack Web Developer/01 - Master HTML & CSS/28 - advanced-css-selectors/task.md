1. You need to implement the following HTML page containing a table with countries population

  <div id="media-container-image-Table for Task with Advanced CSS Selectors">
      <div id="media-title-image-Table for Task with Advanced CSS Selectors">Table for Task with Advanced CSS Selectors</div>
      <img src="http://tech-career-booster-courses.s3.amazonaws.com/01-full-stack-web-developer/sections/01-html-and-css/chapters/28-advanced-css-selectors/assets/images/table-with-styling-for-task-with-advanced-selectors.jpg"
           alt="Table for Task with Advanced CSS Selectors" title="Table for Task with Advanced CSS Selectors" style="border:1px solid gray; margin: 10px 5px;"></img>
  </div>
  
2. You need to take care of the following:
    1. You need to use the font "Montserrat:400,700" from Google Fonts site.
    2. "Global Population" header is an `h2` header.
    3. You can take the countries and their population from here: [Population, total](http://data.worldbank.org/indicator/SP.POP.TOTL). Use any country that you like, but make sure
    that you have at least 10 rows of countries in your table.
    4. It may help you to separate your table element to two sections: `thead` and `tbody`
    5. Make sure that the table borders are styled using CSS rules. Think about how you can make the border collapsing to take place.
    6. The border color should be `maroon`.
    7. The background color of the head rows of the table should be `#FFE4B5`.
    8. The background color of the odd rows of the body of the table should be `#000096`. The color should be `white`.
    9. The background color of the even rows of the body of the table should be `lightgray`. The color should be `black`.
    10. Make sure that the "Years" inside the first row of the head of the table is aligned exactly as depicted on the image above.
    11. The content of the cells with the country names is left aligned.
    12. The content of the cells with the country population numbers is right aligned.
    13. At the left of each country name, there is a circle, a bullet with color red. You need to make sure that this is added automatically even if you add
    new rows to the table. Here are some hints for that:
        1. you will need to use a `::before` pseudo-element.
        2. the content of the pseudo-element is actually empty.
        3. note that you can create a circle with a bullet shape using a `inline-block` that has border and background color red and also has border-radius equal to 50%.
        4. the width and height of the block that is the content of the pseudo-element should be 5px.
3. Upload your work on Netlify.

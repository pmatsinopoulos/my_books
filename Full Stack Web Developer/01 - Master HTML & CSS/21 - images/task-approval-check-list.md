1. Student has created and uploaded to Netlify the Web site that we have implemented in the content of the chapter.
2. Student has added the copyright notice. So, the final result should be something like this:

 ./images/<div>
  ./images/<figure>
    ./images/<img src="https://s3.amazonaws.com/tech-career-booster-courses/01-full-stack-web-developer/sections/01-html-and-css/chapters/21-images/assets/images/page-with-lion-with-copyright-notice.png"
        alt="Page with copyright notice" title="Page with copyright notice" style="border:1px solid gray; margin: 10px 5px;">./images/</img>
    ./images/<div>Page With Copyright Notice./images/</div>
  ./images/</figure>
 ./images/</div>
 
3. Student has created the Web site with the 4 landscape images.
4. The page source code is more or less the following:

 ``` html
 ./images/<!DOCTYPE html>
 ./images/<html>
   ./images/<head>
     ./images/<meta charset="utf-8">
     ./images/<title>Beautiful Landscapes./images/</title>
     ./images/<link rel="stylesheet" href="stylesheets/task.css" type="text/css">
   ./images/</head>
 
   ./images/<body>
 
     ./images/<h1 class="text-center">Beautiful Landscapes./images/</h1>
 
     ./images/<div id="left-column-first-row" class="column text-right">
       ./images/<a href="https://www.google.gr/maps/place/Thasos/@40.6846043,24.578337,12z/data=!4m2!3m1!1s0x14aeee9e0e1bd2e3:0xd4df10b4678755dc">
         ./images/<img src="images/landscape1.jpg" alt="Θάσος" title="Θάσος">
       ./images/</a>
     ./images/</div>
 
     ./images/<div id="right-column-first-row" class="column">
       ./images/<a href="https://www.google.gr/maps/place/Milos/@36.709446,24.3624456,12z/data=!4m2!3m1!1s0x149920ab9f323f3b:0x7846dcf6ac34c198">
         ./images/<img src="images/landscape2.jpg" alt="Μήλος" title="Μήλος">
       ./images/</a>
     ./images/</div>
 
     ./images/<div id="left-column-second-row" class="column text-right">
       ./images/<a href="https://www.google.gr/maps/place/Santorini/@36.4072716,25.3505913,12z/data=!4m2!3m1!1s0x1499ce86adfd9ff7:0xb2a761f740d68afc">
         ./images/<img src="images/landscape3.jpg" alt="Σαντορίνη" title="Σαντορίνη">
       ./images/</a>
     ./images/</div>
 
     ./images/<div id="right-column-second-row" class="column">
       ./images/<a href="https://www.google.gr/maps/place/Karpathos/@35.6139263,27.0118295,11z/data=!4m2!3m1!1s0x1496a7e9b0ad58f3:0x310d36c5c56bf328">
         ./images/<img src="images/landscape4.jpg" alt="Κάρπαθος" title="Κάρπαθος">
       ./images/</a>
     ./images/</div>
 
     ./images/<div id="footer" class="text-center">
       ./images/<small>Copyright &copy; 2016 - Tech Career Booster./images/</small>
     ./images/</div>
 
   ./images/</body>
 
 ./images/</html>
 ```

and the CSS is:

 ``` css
 * {
     box-sizing: border-box;
 }
 
 img {
     width:  520px;
     height: 430px;
 }
 
 .column {
     width: 50%;
     line-height: 0;
 }
 
 #left-column-first-row {
     float: left;
 }
 
 #right-column-first-row {
     float: left;
 }
 
 #left-column-second-row {
     clear: left;
     float: left;
 }
 
 #right-column-second-row {
     float: left;
 }
 
 .text-right {
     text-align: right;
 }
 
 .text-center {
     text-align: center;
 }
 
 #footer {
     clear: left;
 }
 
 img:hover {
     opacity: 0.7;
 }
 ```


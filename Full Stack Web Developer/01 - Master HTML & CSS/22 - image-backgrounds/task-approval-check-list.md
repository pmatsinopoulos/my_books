1. Student has uploaded the "Happy Dogs" site to his Netlify account.
2. He has created the site like this:
 
 ./images/<div>
  ./images/<figure>
    ./images/<img src="https://s3.amazonaws.com/tech-career-booster-courses/01-full-stack-web-developer/sections/01-html-and-css/chapters/22-image-backgrounds/assets/images/task-architecture-screenshot.jpg"
        alt="Task with Background Image" title="Task with Background Image" style="border:1px solid gray; margin: 10px 5px;">./images/</img>
    ./images/<div>Task with Background Image./images/</div>
  ./images/</figure>
 ./images/</div>
 
3. Here is the video that shows the site live:

 ./images/<div id="media-title-video-Site for your task">Site for your task./images/</div>
 ./images/<a href="https://player.vimeo.com/video/194004435">./images/</a>
            
4. He has correct CSS file.
5. He has correct HTML file.
6. Here is a sample solution:

The HTML:

 ``` html
 ./images/<!DOCTYPE html>
 ./images/<html>
   ./images/<head>
     ./images/<meta charset="utf-8">
     ./images/<title>Task with Background Images./images/</title>
     ./images/<link rel="stylesheet" href="stylesheets/task.css" type="text/css">
   ./images/</head>
   ./images/<body>
     ./images/<h1 id="main-header" class="box-container">Art and Architecture./images/</h1>
 
     ./images/<div id="art" class="box-container">
       ./images/<h2>Art./images/</h2>
       ./images/<p>Art is a diverse range of human activities and the products of those activities, usually involving imaginative or technical skill.
       In their most general form these activities include the production of works of art, the criticism of art, the study of the history of art,
       and the aesthetic dissemination of art. This article focuses primarily on the visual arts, which includes the creation of images or objects in
       fields including painting, sculpture, printmaking, photography, and other visual media. Architecture is often included as one of the visual arts;
       however, like the decorative arts, it involves the creation of objects where the practical considerations of use are essential—in a way that
       they usually are not in a painting, for example. Music, theatre, film, dance, and other performing arts, as well as literature and other media
       such as interactive media, are included in a broader definition of art or the arts.[1] Until the 17th century, art referred to any skill or mastery
       and was not differentiated from crafts or sciences. In modern usage after the 17th century, where aesthetic considerations are paramount, the fine
       arts are separated and distinguished from acquired skills in general, such as the decorative or applied arts.
       ./images/</p>
 
       ./images/<p>Art may be characterized in terms of mimesis (its representation of reality), expression, communication of emotion, or other qualities.
         During the Romantic period, art came to be seen as "a special faculty of the human mind to be classified with religion and science".[2]
         Though the definition of what constitutes art is disputed[3][4][5] and has changed over time, general descriptions mention an idea of
         imaginative or technical skill stemming from human agency[6] and creation.
       ./images/</p>
     ./images/</div>
 
     ./images/<div id="architecture" class="box-container">
       ./images/<h2>Architecture./images/</h2>
 
       ./images/<p>Architecture has to do with planning, designing and constructing form, space and ambience to reflect functional, technical, social,
         environmental and aesthetic considerations. It requires the creative manipulation and coordination of materials and technology, and of light and shadow.
         Often, conflicting requirements must be resolved. The practice of Architecture also encompasses the pragmatic aspects of realizing buildings and structures,
         including scheduling, cost estimation and construction administration. Documentation produced by architects, typically drawings, plans and technical
         specifications, defines the structure and/or behavior of a building or other kind of system that is to be or has been constructed.
       ./images/</p>
 
       ./images/<p>
         According to Vitruvius, the architect should strive to fulfill each of these three attributes as well as possible. Leon Battista Alberti, who elaborates on the
         ideas of Vitruvius in his treatise, De Re Aedificatoria, saw beauty primarily as a matter of proportion, although ornament also played a part. For Alberti,
         the rules of proportion were those that governed the idealised human figure, the Golden mean. The most important aspect of beauty was therefore an inherent
         part of an object, rather than something applied superficially; and was based on universal, recognisable truths. The notion of style in the arts was not
         developed until the 16th century, with the writing of Vasari:[9] by the 18th century, his Lives of the Most Excellent Painters, Sculptors, and Architects
         had been translated into Italian, French, Spanish and English.
       ./images/</p>
 
     ./images/</div>
   ./images/</body>
 ./images/</html>
 ```

The CSS:

``` css
 body {
     background-image: url("../images/task-architecture-body-background-image.jpg");
     background-repeat: no-repeat;
     background-attachment: fixed;
     background-position: center;
     background-size: cover;
 }
 
 .box-container {
     margin-bottom: 100px;
 }
 
 #main-header {
     background-color: rgba(255, 255, 255, 0.5);
     text-align: center;
     padding: 30px 50px;
 }
 
 #art {
     background-image: url("../images/task-art-background-image.jpg");
 }
 
 #architecture {
     background-image: url("../images/task-architecture-background-image.jpg");
 }
 
 #art, #architecture {
     background-repeat: no-repeat;
     background-position: center;
     background-size: cover;
     font-size: 28px;
     padding: 10px 20px;
     color: White;
 }
 ```

You are given, below, an HTML that is using a CSS file. You need to convert the CSS file to SCSS and then 
compile the SCSS file to CSS. The styling of HTML, when using the new generated CSS file, should remain the
same as when using the CSS file that we give you below:

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Best Hotels in Santorini</title>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <link href="assets/stylesheets/task.css" rel="stylesheet" type="text/css"/>
  </head>

  <body>
    <h1>Best Hotels in Santorini</h1>

    <!-- 1st -->
    <div class="hotel-container">
      <h4>Kirini Suites Spa</h4>
      <div class="hotel-image">
        <img src="images/kirini-suites-spa.jpg" alt="Kirini Suites SPA" title="Kirini Suites SPA"/>
      </div>
      <div class="book-and-price-container">
        <div class="book-container">
          <a href="#">Book</a>
        </div>
        <div class="price-container">
          &euro; 50/nt
        </div>
      </div>
    </div>

    <!-- 2nd -->
    <div class="hotel-container">
      <h4>Canaves Oia</h4>

      <div class="hotel-image">
        <img src="images/canaves-oia-exterior.jpg" alt="Canaves Oia Exterior" title="Canaves Oia Exterior"/>
      </div>
      <div class="book-and-price-container">
        <div class="book-container">
          <a href="#">Book</a>
        </div>
        <div class="price-container">
          &euro; 50/nt
        </div>
      </div>
    </div>

    <!-- 3rd -->
    <div class="hotel-container">
      <h4>Absolute Bliss Imerovigli</h4>

      <div class="hotel-image">
        <img src="images/absolute-bliss-imerovigli.jpg" alt="Absolute Bliss Imerovigli" title="Absolute Bliss Imerovigli"/>
      </div>
      <div class="book-and-price-container">
        <div class="book-container">
          <a href="#">Book</a>
        </div>
        <div class="price-container">
          &euro; 50/nt
        </div>
      </div>
    </div>

    <!-- 4th -->
    <div class="hotel-container">
      <h4>Petit Palace Suites Hotel</h4>

      <div class="hotel-image">
        <img src="images/petit-palace-suites-hotel.jpg" alt="Petit Palace Suites Hotel" title="Petit Palace Suites Hotel"/>
      </div>
      <div class="book-and-price-container">
        <div class="book-container">
          <a href="#">Book</a>
        </div>
        <div class="price-container">
          &euro; 50/nt
        </div>
      </div>
    </div>

    <!-- 5th -->
    <div class="hotel-container">
      <h4>Atrina Traditional Houses</h4>

      <div class="hotel-image">
        <img src="images/atrina-traditional-houses.jpg" alt="Atrina Traditional Houses" title="Atrina Traditional Houses"/>
      </div>
      <div class="book-and-price-container">
        <div class="book-container">
          <a href="#">Book</a>
        </div>
        <div class="price-container">
          &euro; 50/nt
        </div>
      </div>
    </div>

    <!-- 6th -->
    <div class="hotel-container">
      <h4>Pegasus Suites</h4>

      <div class="hotel-image">
        <img src="images/pegasus-suites.jpg" alt="Pegasus Suites" title="Pegasus Suites"/>
      </div>
      <div class="book-and-price-container">
        <div class="book-container">
          <a href="#">Book</a>
        </div>
        <div class="price-container">
          &euro; 50/nt
        </div>
      </div>
    </div>

    <!-- 7th -->
    <div class="hotel-container">
      <h4>Panorama Boutique Hotel</h4>

      <div class="hotel-image">
        <img src="images/view-from-panorama-boutique.jpg" alt="Panorama Boutique Hotel" title="Panorama Boutique Hotel"/>
      </div>
      <div class="book-and-price-container">
        <div class="book-container">
          <a href="#">Book</a>
        </div>
        <div class="price-container">
          &euro; 50/nt
        </div>
      </div>
    </div>

    <!-- 8th -->
    <div class="hotel-container">
      <h4>Dreams Luxury Suites</h4>

      <div class="hotel-image">
        <img src="images/dreams-luxury-suites.jpg" alt="Dreams Luxury Suites" title="Dreams Luxury Suites"/>
      </div>
      <div class="book-and-price-container">
        <div class="book-container">
          <a href="#">Book</a>
        </div>
        <div class="price-container">
          &euro; 50/nt
        </div>
      </div>
    </div>

    <!-- 9th -->
    <div class="hotel-container">
      <h4>Atlantis Hotel</h4>

      <div class="hotel-image">
        <img src="images/atlantis-hotel.jpg" alt="Atlantis Hotel" title="Atlantis Hotel"/>
      </div>
      <div class="book-and-price-container">
        <div class="book-container">
          <a href="#">Book</a>
        </div>
        <div class="price-container">
          &euro; 50/nt
        </div>
      </div>
    </div>

    <!-- 10th -->
    <div class="hotel-container">
      <h4>Katikies Hotel</h4>

      <div class="hotel-image">
        <img src="images/katikies-hotel.jpg" alt="Katikies Hotel" title="Katikies Hotel"/>
      </div>
      <div class="book-and-price-container">
        <div class="book-container">
          <a href="#">Book</a>
        </div>
        <div class="price-container">
          &euro; 50/nt
        </div>
      </div>
    </div>
  </body>
</html>
```

and the current CSS is (`assets/stylesheets/task.css`):

``` css
* {
  box-sizing: border-box;
  padding: 0;
  margin: 0;
}

html {
  font-size: 62.5%;
  font-family: "Open Sans", Arial, sans-serif;
}

body {
  font-size: 1.6rem;
  margin-top: 1rem;
}

h1 {
  font-size: 2rem;
  text-align: center;
  padding-bottom: 1rem;
  border-bottom: 0.1rem solid #ADD8E6; 
  margin-bottom: 2rem;
}

h4 {
  font-size: 1.2rem;
  text-align: right;
  padding-right: 0.5rem;
  margin-bottom: 0.5rem;
}

.hotel-container {
  width: 100%;
  padding: 1rem;
}

.hotel-image img {
  width: 100%;
}

.book-and-price-container {
  margin-bottom: 1rem;
}

.book-container {
  width: 50%;
  float: left;
}

.book-container a {
  display: inline-block;
  width: 5rem;
  padding: 0 0.5rem;
  background-color: #0000FF;
  color: #FFFFFF;
  text-decoration: none;
  border: 0.1rem solid #0000FF;
  border-radius: 0.5rem;
}

.book-container a:hover {
   background-color: #FFFFFF;
   color: #0000FF;
}

.price-container {
  width: 50%;
  float: left;
  text-align: right;
  padding-right: 0.5rem;
}

@media (min-width: 768px) {
  h1 {
    font-size: 2.4rem;
  }

  /* 2-columns layout */
  .hotel-container {
    width: 50%;
    float: left;
  }
}

@media (min-width: 992px) {
  h1 {
    font-size: 2.6rem;
  }

  /* 3-columns layout */
  .hotel-container {
    width: 33.33333%;
    float: left;
  }

  .hotel-container:nth-of-type(3n+4) {
    clear: left;
  }
}

@media (min-width: 1200px) {
  h1 {
    font-size: 3rem;
  }

  /* 4-columns layout */
  .hotel-container {
    width: 25%;
    float: left;
  }

  .hotel-container:nth-of-type(3n+4) {
    clear: none;
  }
}
```

When you convert the CSS file to SCSS:

1. you need to use Sass variables whenever this is appropriate.
2. you need to use nesting wherever applicable.
3. any other feature of Sass that you believe is necessary, like partials to store your variables.

**Important**: Your code needs to be uploaded into a new project on your Github account. Invite your mentor to review your code online.

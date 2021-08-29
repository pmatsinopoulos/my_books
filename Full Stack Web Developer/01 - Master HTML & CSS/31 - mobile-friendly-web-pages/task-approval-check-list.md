1. You need to make sure that the student has implemented the task as precisely requested as possible.
2. Here is a sample implementation:
The HTML:
``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Best Hotels in Santorini</title>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <link href="stylesheets/task.css" rel="stylesheet" type="text/css"/>
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
and the CSS:
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
    font-size: 2.0rem;
    text-align: center;
    padding-bottom: 1.0rem;
    border-bottom: 0.1rem solid lightblue;
    margin-bottom: 2.0rem;
}

h4 {
    font-size: 1.2rem;
    text-align: right;
    padding-right: 0.5rem;
    margin-bottom: 0.5rem;
}

.hotel-container {
    width: 100%;
    padding: 1.0rem;
}

.hotel-image img {
    width: 100%;
}

.book-and-price-container {
    margin-bottom: 1.0rem;
}

.book-container {
    width: 50%;
    float: left;
}

.book-container a {
    display: inline-block;
    width: 5.0rem;
    padding: 0 0.5rem;
    background-color: blue;
    color: white;
    text-decoration: none;
    border: 1px solid blue;
    border-radius: 5px;
}

.book-container a:hover {
    background-color: white;
    color: blue;
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
        width: 33.33%;
        float: left;
    }
}

@media (min-width: 1200px) {
    h1 {
        font-size: 3.0rem;
    }
    /* 4-columns layout */
    .hotel-container {
        width: 25%;
        float: left;
    }
}
```



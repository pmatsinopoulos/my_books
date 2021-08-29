Your student should create a SCSS file that would be compiled to a CSS with same properties and values like the original
one. 

1. If possible, all the dimensions should be relative to one dimension.
2. He should be using variables and nesting.

A sample implementation is given here:

``` scss
/* _task_variables.scss */
$small-size: 768px;
$medium-size: 992px;
$large-size: 1200px;

$padding-for-all: 0;
$margin-for-all:  0;

$font-size-for-html: 62.5%;
$full-width-percentage: 100%;

$font-stack-1st:       "Open Sans";
$font-stack-2nd:       Arial;
$font-stack-3rd:       sans-serif;
$font-family-for-html: $font-stack-1st, $font-stack-2nd, $font-stack-3rd;

$font-size-for-body:  1.6rem;
$margin-top-for-body: $font-size-for-body * 0.625;

$font-size-for-h1:      $font-size-for-body * 1.25;
$padding-bottom-for-h1: $font-size-for-body * 0.625;
$border-bottom-size:    $font-size-for-body * 0.0625;
$margin-bottom-for-h1:  $font-size-for-body * 1.25;

$font-size-for-h4: $font-size-for-body * 0.75;
$padding-right-for-h4: $font-size-for-body * 0.3125;
$margin-bottom-for-h4: $font-size-for-body * 0.3125;

$padding-for-hotel-container: $font-size-for-body * 0.625;
$margin-bottom-for-book-and-price-container: $font-size-for-body * 0.625;

$width-for-book-container: $full-width-percentage / 2;

$width-for-book-container-a:         $font-size-for-body * 3.125;
$padding-for-book-container-a:       $font-size-for-body * 0.3125;
$border-size-for-book-container-a:   $font-size-for-body * 0.0625;
$border-radius-for-book-container-a: $font-size-for-body * 0.3125;

$width-for-price-container: $full-width-percentage / 2;
$padding-right-for-price-container: $font-size-for-body * 0.3125;

$font-size-for-h1-small-size: $font-size-for-body * 1.5;
$width-for-hotel-container-small-size: $full-width-percentage / 2;

$font-size-for-h1-medium-size: $font-size-for-body * 1.625;
$width-for-hotel-container-medium-size: $full-width-percentage / 3;

$font-size-for-h1-large-size: $font-size-for-body * 1.875;
$width-for-hotel-container-large-size: $full-width-percentage / 4;

/*
* Colors
*/

$blue:       #0000FF;
$light-blue: #ADD8E6;
$white:      #FFFFFF;

/* end of colors */
```

and the `task.scss`

``` scss
/* task.scss */
@import "task_variables";

* {
  box-sizing: border-box;
  padding: $padding-for-all;
  margin: $margin-for-all;
}

html {
  font-size: $font-size-for-html;
  font-family: $font-family-for-html;
}

body {
  font-size: $font-size-for-body;
  margin-top: $margin-top-for-body;
}

h1 {
  font-size: $font-size-for-h1;
  text-align: center;
  padding-bottom: $padding-bottom-for-h1;
  border-bottom: $border-bottom-size solid $light-blue;
  margin-bottom: $margin-bottom-for-h1;
}

h4 {
  font-size: $font-size-for-h4;
  text-align: right;
  padding-right: $padding-right-for-h4;
  margin-bottom: $margin-bottom-for-h4;
}

.hotel-container {
  width: $full-width-percentage;
  padding: $padding-for-hotel-container;
}

.hotel-image img {
  width: $full-width-percentage;
}

.book-and-price-container {
  margin-bottom: $margin-bottom-for-book-and-price-container;
}

.book-container {
  width: $width-for-book-container;
  float: left;

  a {
    display: inline-block;
    width: $width-for-book-container-a;
    padding: 0 $padding-for-book-container-a;
    background-color: $blue;
    color: $white;
    text-decoration: none;
    border: $border-size-for-book-container-a solid $blue;
    border-radius: $border-radius-for-book-container-a;

    &:hover {
      background-color: $white;
      color: $blue;
    }
  }
}

.price-container {
  width: $width-for-price-container;
  float: left;
  text-align: right;
  padding-right: $padding-right-for-price-container;
}

@media (min-width: $small-size) {
  h1 {
    font-size: $font-size-for-h1-small-size;
  }
  /* 2-columns layout */
  .hotel-container {
    width: $width-for-hotel-container-small-size;
    float: left;
  }
}

@media (min-width: $medium-size) {
  h1 {
    font-size: $font-size-for-h1-medium-size;
  }
  /* 3-columns layout */
  .hotel-container {
    width: $width-for-hotel-container-medium-size;
    float: left;

    &:nth-of-type(3n+4) {
      clear: left;
    }
  }
}

@media (min-width: $large-size) {
  h1 {
    font-size: $font-size-for-h1-large-size;
  }
  /* 4-columns layout */
  .hotel-container {
    width: $width-for-hotel-container-large-size;
    float: left;

    &:nth-of-type(3n+4) {
      clear: none;
    }
  }
}
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

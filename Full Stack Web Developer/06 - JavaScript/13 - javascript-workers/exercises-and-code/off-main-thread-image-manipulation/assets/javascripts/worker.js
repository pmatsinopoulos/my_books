// Worker
//

// "filters" define a set of functions that
// do work on image data. For example, the 'brighten' takes the pixels
// and multiply their values by 1.2, so that the whole picture becomes
// brighter.
//
var filters = {
  none: function(data, originalData) {
    for(var i = 0; i < data.length; i++)
      data[i] = originalData[i];
  },

  grayscale: function(data) {
    for(var i = 0; i < data.length; i++) {
      var r = data[i];
      var g = data[i + 1];
      var b = data[i + 2];

      // CIE luminance for the RGB
      // The human eye is bad at seeing red and blue, so we de-emphasize them.
      // An algorithm to turn to gray. See more here: http://www.tannerhelland.com/3643/grayscale-image-algorithm-vb6/
      data[i] = data[i + 1] = data[i + 2] = 0.2126 * r + 0.7152 * g + 0.0722 * b;
    }
  },

  brighten: function(data) {
    for(var i = 0; i < data.length; i++) {
      data[i] *= 1.2;
    }
  },

  darken: function(data) {
    for(var i = 0; i < data.length; i++) {
      data[i] /= 1.2;
    }
  }

}

// This is what the worker will do when it gets a message from Main script
//
self.onmessage = function(event) {
  var imageData = event.data.imageData;
  var filter = event.data.filter;
  var originalData = event.data.originalData;

  filters[filter](imageData.data, originalData.data);

  // after having filtered the image, it will send the data back to the main script
  self.postMessage({imageData: imageData});
}

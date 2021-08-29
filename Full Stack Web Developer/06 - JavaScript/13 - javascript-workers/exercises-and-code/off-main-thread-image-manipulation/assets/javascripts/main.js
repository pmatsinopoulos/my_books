(function($) {
  $(document).ready(function() {
    var img; // Holds reference to "img" element created.
    var imageData; // The imageData loaded. The ImageData of the currently loaded Image.
    var originalData; // The originalData. The ImageData of the original image. Used to reset back to original image, when user selects "none" for filter
    var context; // This will be the canvas context. The image is drawn within a canvas.
    var canvas = $('#output')[0]; // This is the output canvas

    var worker = new Worker('assets/javascripts/worker.js')
    worker.onmessage = function(event) {
      // https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/putImageData
      // When we get the new image data from the Worker, we just paint the image.
      context.putImageData(event.data.imageData, 0, 0);
      imageData = event.data.imageData;
    }

    $('#apply-filter').on('click', function() {
      var src = $('#image-url').val();
      var $filter = $('#filter');

      if (img && img.src === src) {
        // Tell worker to do work.
        worker.postMessage({imageData: imageData, filter: $filter.val(), originalData: originalData});
      }
      else {
        // I create an image element inside canvas
        img = document.createElement('img');
        img.crossOrigin = 'Anonymous';
        img.src = src;

        $(img).on('load', function() {
          var imageElement = this;
          var width = imageElement.width;
          var height = imageElement.height;
          if (width === 0 || height === 0) {
            return;
          }

          // We draw the image on the canvas
          canvas.width = width;
          canvas.height = height;

          context = canvas.getContext('2d');
          context.drawImage(imageElement, 0, 0);

          originalData = context.getImageData(0, 0, width, height);

          // Tell worker to do work.
          worker.postMessage({imageData: originalData, filter: $filter.val(), originalData: originalData});
        });
      }

    });

  });
})(jQuery);


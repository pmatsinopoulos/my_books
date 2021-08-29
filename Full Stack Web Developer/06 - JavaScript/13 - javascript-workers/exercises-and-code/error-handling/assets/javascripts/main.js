window.onload = function() {

  var worker = new Worker('assets/javascripts/worker.js');
  worker.addEventListener('message', function(event) {
    console.log("Worker sent message: ", event.data.message);
  });
  worker.addEventListener('error', function(event) {
    console.log("Something went wrong: Line:", event.lineno, "filename:", event.filename, "message:", event.message);
  });
  worker.postMessage({message: 'Hello World'});
};

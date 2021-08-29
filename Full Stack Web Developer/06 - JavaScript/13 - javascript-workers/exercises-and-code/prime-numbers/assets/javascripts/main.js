// assets/javascripts/main.js
//
window.onload = function () {
  var worker = new Worker('assets/javascripts/worker.js');
  worker.onmessage = function(event) {
    document.getElementById('result').textContent = event.data;
  }
}

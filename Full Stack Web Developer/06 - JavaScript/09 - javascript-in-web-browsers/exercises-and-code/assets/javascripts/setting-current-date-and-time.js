var timer = setInterval(function() {
  var element = document.getElementById('current-date-and-time');
  element.innerHTML = new Date();
}, 1000);

setTimeout(function() {
  clearInterval(timer);
}, 10000);


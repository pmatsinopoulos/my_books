addEventListener('message', function(event) {
  console.log("Worker: message received:", event.data.message);
  postMessage({message: event.data.message.toUpperCase()});
  postMessage({message: event.data.foo.bar});
});

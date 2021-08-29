let n = 1;

while (true) {
  n += 1;
  let prime = true;
  for (let i = 2; i <= Math.sqrt(n); i += 1) {
    if (n % i === 0) {
      prime = false
    }
  }
  if (prime) {
    postMessage(n);
  }
  if (n > 1000000) {
    break;
  }
}

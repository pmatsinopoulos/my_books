// Task 6
//
const ids = {
  next: 0,
  get() {
    return this.next++;
  }
}

console.log(ids.get()); // print 0
console.log(ids.get()); // print 1
console.log(ids.get()); // print 2

// Task 19
//
class EvenNumbers {
  constructor(elements) {
    this.elements = elements
  }

  *[Symbol.iterator]() {
    for(let i of this.elements) {
      if(i % 2 === 0) {
        yield i
      }
    }
  }
}

const evenNumbers = new EvenNumbers([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
for(let num of evenNumbers) {
  console.log(num);
}

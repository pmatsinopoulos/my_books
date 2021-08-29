// Task 9
//
class SortedArray {
  constructor(compare) {
    this.compare = compare;
    this.content = [];
  }

  insert(element) {
    const position = this.content.findIndex((x) => this.compare(element, x) < 0);
    this.content.splice(position == -1 ? this.content.length : position, 0, element);
  }
}

const sortedArray = new SortedArray((a, b) => (a - b));

sortedArray.insert(5);
sortedArray.insert(2);
sortedArray.insert(6);
sortedArray.insert(10);
sortedArray.insert(1);
sortedArray.insert(4);

console.log("array: ", sortedArray.content);

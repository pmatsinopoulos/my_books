// Task 18
//
const _content = Symbol.for('Queue.content');

class Queue {
  constructor() {
    this[_content] = [];
  }

  put(element) {
    return this[_content].push(element);
  }

  take() {
    return this[_content].shift();
  }
}

const q = new Queue;
console.log(q[_content]);

q.put(1);
console.log(q[_content]);

q.put(2);
console.log(q[_content]);

console.log(q.take());
console.log(q[_content]);

console.log(q.take());
console.log(q[_content]);

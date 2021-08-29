## Task 1

Make sure that your student implements the class `Point` according to the requirements. A sample implementation is given
here:

``` JavaScript

class Point {
  constructor(x, y) {
    this.x = x;
    this.y = y;
  }
  
  plus(otherPoint) {
    return new Point(this.x + otherPoint.x, this.y + otherPoint.y);
  }
}

console.log(new Point(1, 2).plus(new Point(2, 1)));
```

## Task 2

Make sure that you student implements `Speaker` and `Shouter` as required. A sample implementation is given here:

``` JavaScript
// task2.js
//
class Speaker {
  constructor(name) {
    this.name = name;
  }

  speak(what) {
    console.log(`${this.name}: ${what}`);
  }
}

new Speaker('Bob').speak('come here!');

class Shouter extends Speaker {
  speak(what) {
    console.log(`${this.name}: ${what.toUpperCase()}`);
  }
}

new Shouter('Bob').speak('come here!');
```

## Task 3

Make sure that the `Customer` class is implemented as required. Here is a sample implementation:

``` JavaScript
class Customer {
  constructor(firstName, lastName) {
    this.firstName = firstName;
    this.lastName = lastName;
  }
  
  set fullName(fullName) {
    [this.firstName, this.lastName] = fullName.split(' ').map((element) => element.trim());
  }
  
  get fullName() {
    return `${this.firstName} ${this.lastName}`;
  }
}

customer = new Customer('John', 'Woo');

console.log('Customer:', customer.fullName);

customer.fullName = 'Maria Foo';

console.log('Customer:', customer.fullName);

console.log('Customer:', customer.firstName, customer.lastName);
```

## Task 4

Make sure that the `startNode` behaves as expected. Here is a sample implementation:

``` JavaScript
const startNode = (type, value, options) => {
  return {type: type, value: value, [options.sourceProperty]: options.sourceValue}
}

console.log(startNode("Identifier", "foo", {
  sourceProperty: "src",
  sourceValue: "bar.js"
}))
// → {type: "Identifier",
//    value: "foo",
//    src: "bar.js"}
```

## Task 5

Make sure that your student creates the correct method `get()` using ES6 syntax.

This is a sample implementation:

``` JavaScript
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
```

## Task 6

This is easy to solve. You only have to replace the `var i` with `let i`:

``` JavaScript
const callbacks = [];
for (let i = 0; i < 10; i++) {
  callbacks.push(function() { console.log(i); })
}

callbacks[2](); // prints 2
```

## Task 7

The `const` goes to the reference and not to the things that reference points to. If one wants to make the `password` property
readonly, one approach might be this:

``` JavaScript
// Task 7
//
const account = {
  username: "user",
  get password() {
    return "pass"
  }
}

account.password = "secret";
console.log(account.password); // => print "pass"

console.log(Object.getOwnPropertyNames(account)); // => includes "password"
```

## Task 8

This is the implementation that filters only the `machine` and calculates the sum with reduce.

``` JavaScript
const inventory = [
  {type: "machine", value: 5000},
  {type: "machine", value: 650 },
  {type: "duck", value: 10},
  {type: "furniture", value: 1200},
  {type: "machine", value: 77}
];

const result = inventory
  .filter((item) => item["type"] === "machine")
  .reduce((sum, item) => (sum + item["value"]), 0);

console.log(result);
```

## Task 9

Make sure your student implements the class using ES6 syntax. Give him guidance to implement it using the `findIndex()` and `splice()` methods.
Here is a sample implementation:

``` JavaScript
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
```

## Task 10

Your student should be able to solve this problem using object destructuring. Here is a sample implementation:

``` JavaScript
const go = (options = {}) => {
  let {speed = 30, hyperdrive = 8} = options;
  
  console.log("speed=", speed, "hyperdrive=", hyperdrive);
}

go();
go({speed: 10, hyperdrive: 30});
```

## Task 11

Here is how your student should define the default argument for `start`:

``` JavaScript
const lastIndexOf = (arr, elt, start) => {
  for(let i = start; i >= 0; i--) {
    if (arr[i] === elt)
      return i;
  }
  return -1;
}

console.log(lastIndexOf([1, 2, 1, 2, 5], 1)); // should print 2
console.log(lastIndexOf([1, 2, 1, 2, 5], 2)); // should print 3
console.log(lastIndexOf([1, 2, 1, 2, 5], 5)); // should print 4
```

## Task 12

Your student needs to write the code higher order functions and the 
[find](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/find) method. Here is a sample
implementation:

``` JavaScript
// Task 12
//

const includes = (object, point) => (
  point.x >= object.x && point.x <= object.x + object.width &&
  point.y >= object.y && point.y <= object.y + object.height
);

const detectCollision = (objects, point) =>
  objects.find((object) =>
    includes(object, point));

const myObjects = [
  {x:  10, y: 20, width: 30, height: 30},
  {x: -40, y: 20, width: 30, height: 30},
  {x:   0, y:  0, width: 10, height:  5}
]

console.log(detectCollision(myObjects, {x: 4, y: 2}));
```

## Task 13

Make sure that the student simplifies the function bodies with the use of the spread operator. Here is a sample implementation:

``` JavaScript
const replace = (array, from, to, elements) => {
  array.splice(...[from, to - from].concat(elements));
}

let testArray = [1, 2, 100, 100, 6];
replace(testArray, 2, 4, [3, 4, 5]);

console.log(testArray);
 
const copyReplace = (array, from, to, elements) => {
  return [...array.slice(0, from), ...elements, ...array.slice(to)];
} 

console.log(copyReplace([1, 2, 100, 200, 6], 2, 4, [3, 4, 5]));

let birdsSeen = []
const recordBirds = (time, ...birds) => {
  birdsSeen.push({time, birds})
}

recordBirds(new Date, "sparrow", "robin", "pterodactyl");
console.log(birdsSeen.length);
console.log(birdsSeen[0].time);
console.log(birdsSeen[0].birds);
```

## Task 14

Make sure that student understands the interpolated strings. They should use an elegant way to make the multiline string.
An example implementation is given here:

``` javascript
const teamName = "tooling"
const people = [{name: "Jennie", role: "senior"},
  {name: "Ronald", role: "junior"},
  {name: "Martin", role: "senior"},
  {name: "Anneli", role: "junior"}]

let role = "senior"
let message = `There are ${people.length} people on the ${teamName} team.
Their names are ${people.map((person) => person.name).join(', ')}.
${people.filter((person) => person.role === role).length} of them have a ${role} role.`;

console.log(message);
```

## Task 15

Your student needs to use `Set` to solve this problem. Make sure that he uses ES6 syntax whenever possible. Here is a sample
implementation:

``` JavaScript
// Task 15
//
// Generate a random graph
const graph = [];
const numberOfNodes = 5;
const numberOfEdges = 20;
for (let i = 0; i < numberOfNodes; i++) {
  const newNode = {value: Math.floor(Math.random() * 1001), edges: []};
  graph.push(newNode);
}
for (let i = 0; i < numberOfEdges; i++) {
  let from = graph[Math.floor(Math.random() * graph.length)];
  let to = graph[Math.floor(Math.random() * graph.length)];
  if (from.edges.indexOf(to) != -1)
    continue
  from.edges.push(to);
}

const connectedValue = (node) => {
  const visited = new Set();

  const visitGraph = (aNode, visited) => {
    if (visited.has(aNode)) {
      return;
    }

    visited.add(aNode);

    aNode.edges.forEach((edge) => visitGraph(edge, visited));
  }

  visitGraph(node, visited);

  return [...visited].reduce((accumulator, element) => element.value + accumulator, 0);
}

console.log(connectedValue(graph[0]));
```
## Task 16

Your student needs to fill in the class `MyMap` as requested. Here is a sample implementation.

``` JavaScript
class MyMap {
  // YOUR CODE HERE
  
  constructor() {
    this.contents = [];
  }
  
  set(key, value) {
    const object = this._constructObject(key, value);
    const position = this._findIndex(key);
    if (position === -1) {
      this.contents.push(object);
    }
    else {
      this.contents[position] = object;
    }    
  }
  
  get(key) {
    const position = this._findIndex(key);
    return position === -1 ? undefined : this.contents[position].value;
  }
  
  get size() {
    return this.contents.length;
  }
  
  delete(key) {
    const position = this._findIndex(key);
    if(position >= 0) {
      this.contents.splice(position, 1);
    }
  }
  
  clear() {
    this.contents = [];
  }
  
  _constructObject(key, value) {
    return {key: key, value: value};
  }
  
  _findIndex(key) {
    return this.contents.findIndex((element) => element.key === key);
  }
}  


const customers = new MyMap();

class Customer {
  constructor(firstName, lastName, age) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.age = age;
  }
  get fullName() {
    return `${this.firstName} ${this.lastName}`;
  }
}

let customer = new Customer('John', 'Smith', 36);
customers.set(customer.fullName, customer);

customer = new Customer('Mary', 'Poppins', 28);
customers.set(customer.fullName, customer);

console.log(customers.get('John Smith').age); // prints 36 
console.log(customers.size); // prints 2

customers.delete('John Smith')
console.log(customers.get('John Smith')) // prints undefined

customer = customers.get('Mary Poppins');
console.log(customer.fullName, customer.age); // prings 'Mary Poppins', 28

customers.clear(); 
console.log(customers.get('Mary Poppins')); // prints undefined
```

## Task 17

Make sure that your student writes code that implements the Web page as requested and that they use the fetch API as instructed. Here is
a sample implementation:

The HTML page:

``` html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <title>Demo of fetch API</title>
  </head>
  <body>
    <div id="result" class="container">
      <h3 id='description'></h3>
      <p>Type of results: <span id='type-of-results'></span></p>
      <p>Number of results: <span id='number-of-results'></span></p>
      <div class="table-responsive">
        <table id='list-of-results' class="table table-striped table-hover table-condensed">
          <thead>
            <tr><th>ID</th><th>Name</th><th>Email</th><th>Address</th></tr>
          </thead>
          <tbody>

          </tbody>
        </table>
      </div>
    </div>
    <script src="assets/javascripts/main.js" type="text/javascript"></script>
  </body>
</html>
``` 

The JavaScript inside `assets/javascripts/main.js`. Note that the sample implementation uses vanilla JavaScript to append information to the DOM,
but this is not necessary. If your student wants to use jQuery, for example, that is acceptable.

``` JavaScript

fetch('http://fakedata.techcareerbooster.com/api/exercises_and_code/students.json')
  .then((response) => {
    console.log('...response finished');
    if(response.ok) {
      return response.json();
    }
    else {
      console.log('Something went wrong', response);
    }
  })
  .catch((error) => {
    console.log(error);
  })
  .then((jsonData) => {
    console.log(jsonData);
    document.getElementById('description').innerHTML = jsonData.description;
    document.getElementById('type-of-results').innerHTML = jsonData.type_of_results;
    document.getElementById('number-of-results').innerHTML = jsonData.number_of_results;
    const tbody = document.getElementsByTagName('tbody')[0];
    jsonData.results.forEach((result) => {
      const tr = document.createElement('tr');
      tr.innerHTML = `<td>${result.id}</td><td>${result.name}</td><td>${result.email}</td><td>${result.address.street_number}, ${result.address.city}, ${result.address.zip_code}, ${result.address.country}</td>`;
      tbody.appendChild(tr);
    })
  });
```

## Task 18

This is a very simple exercise, as long as your student know how to use Symbols. Prefer that they use `Symbol.for` with a correct
namespaced key, instead of just `Symbol`. Also, the link to the article that explains the privacy options in JavaScript is 
really informative.

``` JavaScript
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
```

## Task 19

Your student needs to make the `EvenNumbers` class iterable. Here is a sample implementation:

``` JavaScript
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
```


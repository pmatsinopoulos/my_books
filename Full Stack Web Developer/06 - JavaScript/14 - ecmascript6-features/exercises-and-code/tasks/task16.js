// Task 16
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

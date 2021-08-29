// task3.js
//
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

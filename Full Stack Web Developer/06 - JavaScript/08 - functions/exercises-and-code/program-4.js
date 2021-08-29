function Employee(name, salary, numberOfYears) {
    return {name: name,
        salary: salary,
        numberOfYears: numberOfYears,
        bonus: function() {
            if (this.numberOfYears < 0.5) {
                return 0;
            }
            else if (this.numberOfYears <= 5) {
                return this.salary / 2;
            }
            else if (this.numberOfYears <= 10) {
                return this.salary;
            }
            else if (this.numberOfYears > 10) {
                return this.salary * 2;
            }
        }};
}

var employee = new Employee("Stan F.", 1000, 0.3);
console.log(employee.bonus());

var employee = new Employee("John Woo", 1000, 0.8);
console.log(employee.bonus());

employee = new Employee("Mary Foo", 1000, 3);
console.log(employee.bonus());

employee = new Employee("Peter Papas", 1000, 6);
console.log(employee.bonus());

employee = new Employee("Paul D.", 1000, 11);
console.log(employee.bonus());

Make sure that the student has developed the programs as requested. Here are sample implementations:

A. Program 1:
``` javascript
function toCelsius(fahrenheit) {
    return Math.round((fahrenheit - 32) * 5 / 9);
}

console.log(toCelsius(100));
console.log(toCelsius(70));
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

B. Program 2:
``` javascript
function factorial(number) {
    var previous = 1;
    for (var i = 2; i <= number; i++) {
        previous *= i;
    }
    return previous;
}

console.log(factorial(4));
console.log(factorial(7));
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

C. Program 3:
``` javascript
function factorial(number) {
    if (number === 0 || number === 1) {
        return 1;
    }
    return factorial(number - 1) * number;
}

console.log(factorial(4));
console.log(factorial(7));
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

D. Program 4:
``` javascript
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
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

E. Program 5:
``` javascript
function uppercaseFirstLetter(word) {
    if (word === undefined || word.length === 0) {
        return "";
    }

    return word[0].toUpperCase() + word.slice(1);
}

console.log(uppercaseFirstLetter("foo"));
console.log(uppercaseFirstLetter());
console.log(uppercaseFirstLetter(""));
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

F. Program 6:
``` javascript
function uppercaseFirstLetter(word) {
    if (word === undefined || word.length === 0) {
        return "";
    }

    return word[0].toUpperCase() + word.slice(1);
}

function concatenateAndUppercase() {
    if (arguments.length === 0) {
        return "";
    }

    var result = "";
    for ( var i = 0; i < arguments.length; i++) {
        if (arguments[i] === "") {
            continue;
        }
        if ( result !== "") {
            result = result + " ";
        }
        result = result + uppercaseFirstLetter(arguments[i]);
    }
    return result;
}

console.log(concatenateAndUppercase());
console.log(concatenateAndUppercase("foo", "bar", "mary", "", "woo"));
console.log(concatenateAndUppercase("foo", "bar", "mary", "woo"));
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

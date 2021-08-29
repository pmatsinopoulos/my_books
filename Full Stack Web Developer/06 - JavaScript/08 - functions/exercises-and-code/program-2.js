function factorial(number) {
    var previous = 1;
    for (var i = 2; i <= number; i++) {
        previous *= i;
    }
    return previous;
}

console.log(factorial(4));
console.log(factorial(7));

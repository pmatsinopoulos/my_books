function factorial(number) {
    if (number === 1) {
        return 1;
    }
    return factorial(number - 1) * number;
}

console.log(factorial(4));
console.log(factorial(7));

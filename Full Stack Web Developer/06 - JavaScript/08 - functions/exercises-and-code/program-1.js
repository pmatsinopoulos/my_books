function toCelsius(fahrenheit) {
    return Math.round((fahrenheit - 32) * 5 / 9);
}

console.log(toCelsius(100));
console.log(toCelsius(70));

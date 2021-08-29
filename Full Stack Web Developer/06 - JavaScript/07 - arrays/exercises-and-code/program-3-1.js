var numbers = [5, 8, 2, 15, 32, 3, 46];

result = numbers.map(function(element) {
    return element * 2 + 15;
}).reduce(function(accumulator, element) {
    return accumulator + element;
}, 0);

console.log(result);

var confirm =
        5 * 2 + 15 +
        8 * 2 + 15 +
        2 * 2 + 15 +
        15 * 2 + 15 +
        32 * 2 + 15 +
        3 * 2 + 15 +
        46 * 2 + 15;

console.log(confirm);

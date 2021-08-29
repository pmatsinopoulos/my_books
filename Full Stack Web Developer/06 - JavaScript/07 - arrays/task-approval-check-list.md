Make sure that the student has developed the programs as requested. Here are sample implementations:

A. Program 1
``` javascript
var products = ["Tomatoes", "Potatoes", "TOMATOES", "POTATOES"];
var sorted = products.sort(function(a, b) {
    var aUpperCase = a.toUpperCase();
    var bUpperCase = b.toUpperCase();
    return (aUpperCase < bUpperCase ? -1 : (aUpperCase > bUpperCase ? 1 : 0));
});

console.log(products);
console.log(sorted);
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

B. Program 2
``` javascript
var A = [
    [ 2,  5, 8, 10],
    [ 4,  2, 4,  5],
    [ 3, -1, 3,  2],
    [-8, -2, 4,  5]
];

var B = [
    [ 1,  3, -8,  2],
    [ 3,  1,  4, 10],
    [-1,  2, -3, 12],
    [ 5, -3,  3,  8]
];

var C = [];

for (i = 0; i < A.length; i++) {
    C[i] = [];
    for (j = 0; j < A[i].length; j++) {
        C[i][j] = A[i][j] + B[i][j];
    }
}

console.log(C);
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

C. Program 3.1
``` javascript
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
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

D. Program 3.2
``` javascript
var numbers = [5, 8, 2, 15, 32, 3, 46];

result = 0;
for (var i = 0; i < numbers.length; i++) {
    result += numbers[i] * 2 + 15;
}

console.log(result);
```

**Important**: Your student needs to upload their work on their Github account. You need to review it online.

var numbers = [5, 8, 2, 15, 32, 3, 46];

result = 0;
for (var i = 0; i < numbers.length; i++) {
    result += numbers[i] * 2 + 15;
}

console.log(result);

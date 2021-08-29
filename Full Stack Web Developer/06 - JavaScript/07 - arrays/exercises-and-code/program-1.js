var products = ["Tomatoes", "Potatoes", "TOMATOES", "POTATOES"];
var sorted = products.sort(function(a, b) {
    var aUpperCase = a.toUpperCase();
    var bUpperCase = b.toUpperCase();
    return (aUpperCase < bUpperCase ? -1 : (aUpperCase > bUpperCase ? 1 : 0));
});

console.log(products);
console.log(sorted);


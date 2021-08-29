function uppercaseFirstLetter(word) {
    if (word === undefined || word.length === 0) {
        return "";
    }

    result = word[0].toUpperCase() + word.slice(1);
    return result;
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

function uppercaseFirstLetter(word) {
    if (word === undefined || word.length === 0) {
        return "";
    }

    result = word[0].toUpperCase() + word.slice(1);
    return result;
}

console.log(uppercaseFirstLetter("foo"));
console.log(uppercaseFirstLetter());
console.log(uppercaseFirstLetter(""));

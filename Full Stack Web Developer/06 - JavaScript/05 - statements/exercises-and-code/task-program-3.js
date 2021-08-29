for (var i = 1; i <= 51; i++) {
    if (i === 13 || i === 23 || i === 45) {
        continue;
    }
    if (i % 2 === 1) {
        console.log(i);
    }
}

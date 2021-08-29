var name = prompt("What is your name?");
if (name !== "null") {
    var answer = confirm(name + ", do you want me to display a random number?");
    if (answer) {
        alert("This is a random number: " + Math.random());
    }
}

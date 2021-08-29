// Task 7
//
const account = {
  username: "user",
  get password() {
    return "pass"
  }
}

account.password = "secret";
console.log(account.password); // => print "pass"

console.log(Object.getOwnPropertyNames(account)); // => includes "password"

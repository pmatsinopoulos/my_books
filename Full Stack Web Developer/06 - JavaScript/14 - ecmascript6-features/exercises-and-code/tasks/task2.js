// task2.js
//
class Speaker {
  constructor(name) {
    this.name = name;
  }

  speak(what) {
    console.log(`${this.name}: ${what}`);
  }
}

new Speaker('Bob').speak('come here!');

class Shouter extends Speaker {
  speak(what) {
    console.log(`${this.name}: ${what.toUpperCase()}`);
  }
}

new Shouter('Bob').speak('come here!');

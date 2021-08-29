// Task 13
//
const replace = (array, from, to, elements) => {
  array.splice(...[from, to - from].concat(elements));
}

let testArray = [1, 2, 100, 100, 6];
replace(testArray, 2, 4, [3, 4, 5]);

console.log(testArray);

const copyReplace = (array, from, to, elements) => {
  return [...array.slice(0, from), ...elements, ...array.slice(to)];
}

console.log(copyReplace([1, 2, 100, 200, 6], 2, 4, [3, 4, 5]));

let birdsSeen = [];
const recordBirds = (time, ...birds) => {
  birdsSeen.push({time, birds})
}

recordBirds(new Date, "sparrow", "robin", "pterodactyl");
console.log(birdsSeen.length);
console.log(birdsSeen[0].time);
console.log(birdsSeen[0].birds);

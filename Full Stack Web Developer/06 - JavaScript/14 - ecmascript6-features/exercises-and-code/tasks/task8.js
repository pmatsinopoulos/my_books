// Task 8
//
const inventory = [
  {type: "machine", value: 5000},
  {type: "machine", value: 650 },
  {type: "duck", value: 10},
  {type: "furniture", value: 1200},
  {type: "machine", value: 77}
];

const result = inventory
  .filter((item) => item["type"] === "machine")
  .reduce((sum, item) => (sum + item["value"]), 0);

console.log(result);

// task4.js
//
const startNode = (type, value, options) => {
  return {type: type, value: value, [options.sourceProperty]: options.sourceValue}
}

console.log(startNode("Identifier", "foo", {
  sourceProperty: "src",
  sourceValue: "bar.js"
}))
// → {type: "Identifier",
//    value: "foo",
//    src: "bar.js"}


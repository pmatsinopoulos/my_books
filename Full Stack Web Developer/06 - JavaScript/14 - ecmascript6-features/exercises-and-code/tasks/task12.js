// Task 12
//

const includes = (object, point) => (
  point.x >= object.x && point.x <= object.x + object.width &&
  point.y >= object.y && point.y <= object.y + object.height
);

const detectCollision = (objects, point) =>
  objects.find((object) =>
    includes(object, point));

const myObjects = [
  {x:  10, y: 20, width: 30, height: 30},
  {x: -40, y: 20, width: 30, height: 30},
  {x:   0, y:  0, width: 10, height:  5}
]

console.log(detectCollision(myObjects, {x: 4, y: 2}));

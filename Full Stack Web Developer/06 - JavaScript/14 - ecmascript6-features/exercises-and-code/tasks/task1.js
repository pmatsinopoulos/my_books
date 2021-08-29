// task1.js
//
class Point {
  constructor(x, y) {
    this.x = x;
    this.y = y;
  }

  plus(otherPoint) {
    return new Point(this.x + otherPoint.x, this.y + otherPoint.y);
  }
}

console.log(new Point(1, 2).plus(new Point(2, 1)));

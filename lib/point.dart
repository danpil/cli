import 'dart:math' as Math;

class Point {
  final int x;
  final int y;
  final int z;

  Point(this.x, this.y, this.z);
  
  factory Point.zero() {
    return Point(0, 0, 0);
  }

  distanceTo(Point another) {
    return Math.sqrt(_pow(another.x - x) + _pow(another.y - y) + _pow(another.z - z));
  }

  _pow(int value) {
    return Math.pow(value, 2);
  }
}

import 'dart:math' as math;

void sealed(){
  var square = calculateArea(Square(5));
  var circle = calculateArea(Circle(5));

  print('square:$square, circle:$circle');
}

sealed class Shape {
}

class Square implements Shape {
  final double length;
  Square(this.length);
  
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);
}

double calculateArea(Shape shape) => switch (shape) {
  Square(length: var l) => l * l,
  Circle(radius: var r) => math.pi * r * r
};
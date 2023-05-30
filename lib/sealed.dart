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

// class Rectangle implements Shape {
//   final double radius;
//   Rectangle(this.radius);
// }

double calculateArea(Shape shape) => switch (shape) {
  Square(length: var l) => l * l,
  Circle(radius: var r) => math.pi * r * r
};

// 상속이 안되는 클래스
base class Person{
  final String name;
  final int age;

  Person(this.name, this.age);
}

// class Idol implements Person{
//   @override
//   // TODO: implement age
//   int get age => throw UnimplementedError();

//   @override
//   // TODO: implement name
//   String get name => throw UnimplementedError();
// }
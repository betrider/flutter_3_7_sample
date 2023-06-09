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

// 여러 클래스

// 상속은 안되고 꼭 구현해야할 내용들만 기술하는 클래스를 만들때입니다. 추상 클래스를 생각하시면 됩니다.

abstract class AbstractClass {
  String name;
  String age;

  AbstractClass({
    required this.name,
    required this.age,
  });

  void callName();
}

interface class InterfaceClass{
  String name;
  String age;
  InterfaceClass({
    required this.name,
    required this.age,
  });
}

// private members들만 상속해주는 클래스를 만들때입니다. 이어 나오는 final의 반대 케이스로 이해하시면 됩니다.
base class BaseClass{
  final String name;
  final int age;

  BaseClass(this.name, this.age);
}

// 더이상 sub class를 만들수 없는 마지막 클래스를 만들때입니다.
final class FinalClass{
  final String name;
  final int age;

  FinalClass(this.name, this.age);
}

mixin MixinClass{
  String? code;

  void fly(){
    print('I can fly');
  }
  void say(){
    print('I am a bird');
  }
}

class Person4_1 extends AbstractClass{
  Person4_1({required super.name, required super.age});

  @override
  void callName() {
    // TODO: implement callName
  }
}


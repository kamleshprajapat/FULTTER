import 'dart:io';

void main() {
  var base;
  var height;
  print("Enter base number");
  base = int.parse(stdin.readLineSync()!);
  print("Enter hight number");
  height = int.parse(stdin.readLineSync()!);
  var area = (base * height) / 2;
  print("Area of triangle is $area ");
}

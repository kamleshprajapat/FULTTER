import 'dart:io';

main() {
  var num1;
  print("Enter your Square number ");
  num1 = int.parse(stdin.readLineSync()!);

  var num2;
  print("Enter your cube number");
  num2 = int.parse(stdin.readLineSync()!);

  var num3;
  print("Enter your multi number ");
  num3 = int.parse(stdin.readLineSync()!);

  print("your Square is ${num1 * num1 * num1}");
  print("your cube is ${num2 / num2 / num2} ");
  print("your multi is ${num3 + num3 + num3 + num3}");
}

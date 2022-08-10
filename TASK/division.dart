import 'dart:io';

main() {
  var k1;
  var k2;
  print("Enter your first number");
  k1 = int.parse(stdin.readLineSync()!);
  print("Enter your second number");
  k2 = int.parse(stdin.readLineSync()!);
  print("your sum is ${k1 + k2}");
  print("your main is ${k1 - k2}");
  print("your multi is ${k1 * k2}");
  print("ypur divi is ${k1 / k2}");
  print("your part is ${k1 % k2}");
}

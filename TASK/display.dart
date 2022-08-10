import 'dart:io';

main() {
  var name;
  var Address;
  var Email;
  var BirthDate;
  var age;

  print("Enter your name ");
  name = stdin.readLineSync();

  print("Enter your Address");
  Address = stdin.readLineSync();

  print("Enter your Email");
  Email = stdin.readLineSync();

  print("Enter your Birthdate");
  BirthDate = stdin.readLineSync();

  print("Enter your age");
  age = stdin.readLineSync();

  print("name = $name");
  print("Address = $Address");
  print("Email = $Email");
  print("age = $age");
}

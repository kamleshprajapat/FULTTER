// Write a Program of Addition, Subtraction ,Multiplication and Division using Switch case.(Must Be
// Menu Driven)

import 'dart:io';

void main() {
  double num1, num2, ans;
  int opt;
  do {
    print("\nEnter the First Number : ");
    num1 = double.parse(stdin.readLineSync()!);
    print("\nEnter the Second Number : ");
    num2 = double.parse(stdin.readLineSync()!);

    print("\n-----Main Menu----\n1.Addition");
    print("2.Subtraction\n3.Multiply\n4.Divide\n5.Exit");
    print("\nEnter your choice : ");
    opt = int.parse(stdin.readLineSync()!);

    switch (opt) {
      case 1:
        ans = num1 + num2;
        print("\nThe addition of 2 numbers is : $ans");
        break;
      case 2:
        ans = num1 - num2;
        print("\nThe differnce of 2 numbers is : $ans");
        break;
      case 3:
        ans = num1 * num2;
        print("\nThe product of 2 numbers is : $ans");
        break;
      case 4:
        ans = num1 / num2;
        print("\nThe division of 2 numbers is : $ans");
        break;
      case 5:
        break;
      default: //error message for wrong choice
        print("\nYou Entered Wrong Choice\n");
        break;
    }
  } while (opt != 5);
}

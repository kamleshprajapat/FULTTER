// q-20 d. write a program you have to find the factorial of given number.

import 'dart:io';

void main() {
  print("Enter value of N");
  int N = int.parse(stdin.readLineSync()!);
  int result = 1;
  for (int i = 1; i <= N; i++) {
    result *= i;
  }
  print("factorial of $N");
  print(result);
}

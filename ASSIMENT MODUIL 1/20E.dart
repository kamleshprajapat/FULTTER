// Write a program you have to print the Fibonacci series up to user given number

import 'dart:io';

void main() {
  print("Enter value of N");
  int N = int.parse(stdin.readLineSync()!);
  fibbonaccie_series(N);
}

void fibbonaccie_series(N) {
  int a = 0, b = 1, c;
  for (int i = 1; i <= N; i++) {
    c = a + b;
    a = b;
    b = c;
    print("$a");
  }
}

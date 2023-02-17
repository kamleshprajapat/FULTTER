// Write a program to print the number in reverse order.
import 'dart:io';

void main() {
  print("Enter number");
  int N = int.parse(stdin.readLineSync()!);
  print("\n");
  for (int i = N; i >= 1; i--) {
    print("$i");
  }
}

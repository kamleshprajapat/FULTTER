import 'dart:io';

void main() {
  int num;
  int positivenum = 0;
  int negtivenum = 0;

  for (int n = 1; n <= 5; n++) {
    print("Enter the number");
    num = int.parse(stdin.readLineSync()!);
    if (num >= 1) {
      print("this is a positivenum number ");
      positivenum += num;
      print("this a negtivenum");
      negtivenum += num;
    }
  }
  print("this is the sum of positivenum number:$positivenum");
  print("this is the sum of nagtivenum:$negtivenum");
}

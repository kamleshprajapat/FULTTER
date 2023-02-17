// draw a patten
import 'dart:io';

void main() {
  FirstPatten();
}

void FirstPatten() {
  print("we are print * using pyramid \n");
  print("Enter value of N : ");
  int N = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= N; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('* ');
    }
    stdout.writeln();
  }
}

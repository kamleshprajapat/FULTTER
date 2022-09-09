import 'dart:io';

void main() {
  var num = 0;
  var name;

  print("enter your name");
  name = stdin.readLineSync()!;
  for (var i = 0; i < name.length; i++) {
    num = num + 1;

    print("$num ${name[i]}");
  }
  print("There are in $num cartory");
}

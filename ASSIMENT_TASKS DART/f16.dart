import 'dart:io';

main() {
  var Hindi1;
  var English2;
  var Since3;
  var Math4;
  var SocialSince5;
  var percentage;
  print("Enter Hindi1 mark");
  Hindi1 = int.parse(stdin.readLineSync()!);
  print("Enter English2 mark");
  English2 = int.parse(stdin.readLineSync()!);
  print("Enter Since3 mark");
  Since3 = int.parse(stdin.readLineSync()!);
  print("Enter Math4 mark");
  Math4 = int.parse(stdin.readLineSync()!);
  print("Enter SocialSince5 mark");
  SocialSince5 = int.parse(stdin.readLineSync()!);

  var total = SocialSince5 + Hindi1 + English2 + Since3 + Math4;
  print("total is $total");

  percentage = total * 100 / 500;
  print("Your percentage is $percentage");

  if (percentage > 75) {
    print("You have Distinction");
  } else if (percentage <= 75 && percentage > 60) {
    print("You have first class");
  } else if (percentage <= 60 && percentage > 50) {
    print("You have second class");
  } else if (percentage <= 50 && percentage > 35) {
    print("You have pass class");
  } else {
    print("your are failed");
  }
}

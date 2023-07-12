import 'dart:io';

main() {
  print("-----------------------------------------\n \n ");
  print("\t\ WALCOME TO GK QUESTIONS \n \n ");
  print("------------------------------------------\n \n");
  quntion();
}

void quntion() {
  var status = true;

  while (status) {
    print("INDIA republic day kab manaya jata hai");
    print("A) 26 January \t \t B) 15 january ");

    print("c) 15 August \t \t d) 16 may ");
    print("Enter your Answer ");

    var ans = stdin.readLineSync()!;
    if (ans == "A" || ans == "a") ;
    print("A B C _");
    print("A) D \t \t b) E");
  }
}

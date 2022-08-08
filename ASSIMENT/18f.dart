import 'dart:io';

main() {
  int r, l, w, b, h;
  var area;
  print("Import 1 for area of circle\n");
  print("Import 2 for rectangle\n ");
  print("Inport 3 for trinagle");
  print("Inport your choice :");
  var choice = int.parse(stdin.readLineSync()!);

}
switch (choice){
  case 1 ;
  print("Inport radious of the circle : ");
  r = int.parse(stdin.readLineSync()!);
  area = 3.14 * r * r ;
  break 2:
   
}
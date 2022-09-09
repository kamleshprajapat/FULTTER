import 'package:flutter/material.dart';
import 'package:pp01/text_exmple.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyText(),
    );
  }
}

import 'package:data_base/home_Screen.dart';
import 'package:flutter/material.dart';

main() {
  runApp(Database());
}

class Database extends StatelessWidget {
  const Database({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_screen(),
    );
  }
}

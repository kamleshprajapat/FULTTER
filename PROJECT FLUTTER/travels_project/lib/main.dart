import 'package:flutter/material.dart';
import 'package:travels_project/Trivels_file/Login_peg.dart';
import 'package:travels_project/Trivels_file/screen_page.dart';

main() {
  runApp(travels());
}

class travels extends StatefulWidget {
  const travels({super.key});

  @override
  State<travels> createState() => _travelsState();
}

class _travelsState extends State<travels> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen_page(),
    );
  }
}

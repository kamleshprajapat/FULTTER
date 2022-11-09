import 'package:file/file.dart';
import 'package:flutter/material.dart';

main() {
  runApp(Star());
}

class Star extends StatefulWidget {
  const Star({Key? key}) : super(key: key);

  @override
  State<Star> createState() => _StarState();
}

class _StarState extends State<Star> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Myapp1(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project/01.dart';
import 'package:project/02.dart';
import 'package:project/03.dart';
import 'package:project/04.dart';
import 'package:project/05.dart';
import 'package:project/07.dart';
import 'package:project/08.dart';
import 'package:project/09.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: nine(),
    );
  }
}

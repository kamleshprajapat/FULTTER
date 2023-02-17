import 'package:animation/animation_example.dart';
import 'package:flutter/material.dart';

main() {
  runApp(Animation());
}

class Animation extends StatelessWidget {
  const Animation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAnimation(),
    );
  }
}

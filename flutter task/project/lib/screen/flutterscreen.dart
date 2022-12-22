import 'package:flutter/material.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class flutterScreen extends StatefulWidget {
  const flutterScreen({Key? key}) : super(key: key);

  @override
  State<flutterScreen> createState() => _flutterScreenState();
}

class _flutterScreenState extends State<flutterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      body: Center(
        child: Container(
            height: 200,
            padding: EdgeInsets.all(20),
            child: Text(
              "Flutter - Mobile App development",
              style: TextStyle(fontSize: 26, color: Colors.white),
            ),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}

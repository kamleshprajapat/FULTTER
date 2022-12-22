import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'homescreen.dart';

class iosscreen extends StatefulWidget {
  const iosscreen({super.key});

  @override
  State<iosscreen> createState() => _iosscreenState();
}

class _iosscreenState extends State<iosscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      body: Center(
        child: Container(
            height: 200,
            padding: EdgeInsets.all(20),
            child: Text(
              "Ios - Mobile App development",
              style: TextStyle(fontSize: 26, color: Colors.white),
            ),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}

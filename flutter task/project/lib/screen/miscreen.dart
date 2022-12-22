import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Miscreen extends StatefulWidget {
  const Miscreen({Key? key}) : super(key: key);

  @override
  State<Miscreen> createState() => _MiscreenState();
}

class _MiscreenState extends State<Miscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          height: 200,
          padding: EdgeInsets.all(20),
          child: Text(
            "Android - Mobile App development",
            style: TextStyle(color: Colors.white, fontSize: 26),
          ),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}

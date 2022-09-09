import 'package:flutter/material.dart';

void main() {
  runApp(ThardApp());
}

class ThardApp extends StatelessWidget {
  const ThardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            leading: Icon(
              Icons.car_repair,
              size: 50,
            ),
            title: Text(
              "Rapido",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontStyle: FontStyle.italic),
            ),
            backgroundColor: Colors.pink),
        body: Container(
            color: Colors.pinkAccent,
            width: double.maxFinite,
            padding: EdgeInsets.all(20),
            child: Center(
                child: Text(
              "Wlcome Rapido",
              style: TextStyle(fontSize: 56),
            ))),
      ),
    );
  }
}

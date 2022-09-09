import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          leading: Icon(
            Icons.facebook,
            size: 50,
          ),
          title: Text(
            "FaceBook",
            style: TextStyle(color: Colors.pink, fontSize: 45),
          ),
        ),
        body: Center(
            child: Text(
          "Welcome to faceBook",
          style: TextStyle(color: Colors.black, fontSize: 40),
        )),
      ),
    );
  }
}

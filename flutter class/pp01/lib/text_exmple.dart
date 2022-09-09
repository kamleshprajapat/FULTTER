import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Example"),
      ),
      body: Container(
        child: Text("ANS = ${display()}"),
      ),
    );
  }

  int display() {
    int num1, num2;
    num1 = 10;
    num2 = 20;
    return num1 + num2;
  }
}

import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
  const Mytext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Myapp"),
      ),
      body: Container(
        child: Text("Suppar"),
      ),
    );
  }
}

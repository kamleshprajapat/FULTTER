import 'package:flutter/material.dart';

void main() {
  runApp(SecondApp());
}

class SecondApp extends StatelessWidget {
  const SecondApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          leading: Icon(
            Icons.pedal_bike,
            size: 45,
          ),
          title: Text("Ubar",
          style: TextStyle(color: Colors.black38),),
        ),
        body: Center(child: Text("Welcome Ubar",
        style:TextStyle(color: Colors.pink)
        
        ,)
        ),
      ),
    );
  }
}

/*import 'package:flutter/material.dart';

main() {
  runApp(NewApp());
}

class NewApp extends StatelessWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.photo_album,
            size: 35,
          ),
          title: Text("Google Photo"),
        ),
        body: Container(
          color: Colors.deepPurple,
          width: double.maxFinite,
          padding: EdgeInsets.all(30),
          child: Center(child: Text("Walcome Photo")),
        ),
      ),
    );
  }
}*/
import 'package:flutter/material.dart';

void main() {
  runApp(NewApp());
}

class NewApp extends StatelessWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("MyApp"),
            backgroundColor: Colors.black,
            leading: Icon(Icons.home)),
        body: Column(
          children: [
            Text(
              "Android",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "java",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}

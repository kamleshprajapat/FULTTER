import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("This"),
        // ),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.vox-cdn.com/thumbor/wuz9uTeQETuSl9VDfM4K9lPkIh0=/0x85:2000x1585/1220x813/filters:focal(0x85:2000x1585):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/49502491/Tom_and_Jerry_.0.0.jpg"),
                  fit: BoxFit.cover)),
          height: 150,
          width: double.maxFinite,
          child: Center(
            child: Text(
              "Set Full Screen Background Image in Flutter",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

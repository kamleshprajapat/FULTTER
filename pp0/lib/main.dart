import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row and Column"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Row(
            children: [
              Expanded(
                  child: Text(
                "Androad",
                style: TextStyle(color: Colors.pink, fontSize: 80),
              ),
              ),
              Expanded(
                child: Text(
                  "flutter",
                  style: TextStyle(color: Colors.black, fontSize: 80),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

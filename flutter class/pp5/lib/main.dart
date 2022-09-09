import 'package:flutter/material.dart';

void main() {
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
          title: Text("Raw and Column"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          // color: Colors.black12,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(34),
                padding: EdgeInsets.symmetric(horizontal: 34),
                height: 155,
                width: double.maxFinite,
                color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.black,
                      size: 60,
                    ),
                    Icon(
                      Icons.home,
                      color: Colors.black,
                      size: 60,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(16),
                height: 150,
                width: double.maxFinite,
                color: Colors.amber,
              )
            ],
          ),
        ),
        drawer: Drawer(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

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
          title: Text(
            "Sliver Grid types",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          leading: Icon(Icons.arrow_back),
          backgroundColor: Colors.blue,
          toolbarHeight: 100,
        ),
        body: Container(
          child: Column(
            children: [
              Text(
                "SliverGrid.extent",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 150,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 60,
                    width: 150,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 150,
                    height: 60,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 60,
                    width: 150,
                    color: Colors.yellow,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 150,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 60,
                    width: 150,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 150,
                    height: 60,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 60,
                    width: 150,
                    color: Colors.yellow,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 150,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 60,
                    width: 150,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 150,
                    height: 60,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 60,
                    width: 150,
                    color: Colors.yellow,
                  )
                ],
              ),
              Text(
                "SliverGrid.count",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 150,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 80,
                    width: 150,
                    color: Colors.yellow,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 80,
                    width: 150,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 80,
                    width: 150,
                    color: Colors.green,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 150,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 80,
                    width: 150,
                    color: Colors.yellow,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 80,
                    width: 150,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 80,
                    width: 150,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

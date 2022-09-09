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
          title: Text(""),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.symmetric(horizontal: 34),
                height: 50,
                width: double.maxFinite,
                color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Strawberry Pavlova",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                    )
                  ],
                ),
              ),
              SizedBox(),
              Container(
                margin: EdgeInsets.all(16),
                height: 200,
                alignment: Alignment.center,
                width: double.maxFinite,
                color: Colors.amber,
                child: Text(
                  " Pavlona is a meringue-based \n dessert named after the Russian\n balience Anna Pavlona .\n Pavlona feture a crisp crust and\n soft light inside topped with fruit \n and whispped cream.",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              SizedBox(),
              Container(
                margin: EdgeInsets.all(16),
                height: 40,
                alignment: Alignment.center,
                width: double.maxFinite,
                color: Color.fromRGBO(209, 248, 70, 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Text("170 Reviews")
                  ],
                ),
              ),
              SizedBox(),
              Container(
                margin: EdgeInsets.all(16),
                height: 100,
                alignment: Alignment.center,
                width: double.maxFinite,
                color: Colors.yellow,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.contact_mail,
                        color: Colors.red,
                        size: 50,
                      ),
                      Icon(
                        Icons.alarm,
                        color: Colors.red,
                        size: 50,
                      ),
                      Icon(
                        Icons.food_bank_outlined,
                        color: Colors.red,
                        size: 50,
                      ),
                    ],
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
